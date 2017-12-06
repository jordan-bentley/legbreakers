<?php 
     include('../PHP/db_connect.php');
    $movie = $_GET['movie']; //Gets the movie_id from the url


    //Begin getting information about the requested movie
    // Desired Query goes in the " ".
    $query = "SELECT * FROM movies WHERE movie_id = $movie";
    /*
        Connects to the database using the connection from the php
        include statement above and stores the returned value as $db,
        also runs the query from above
    */
    $db = mysqli_query($conn, $query);
    //Movie
    while($row = mysqli_fetch_assoc($db)){
            // Null, Title, Rating, Runtime, Genre, Releasedate
        $movie_id = $row['movie_id'];
        $title = $row['title'];
        $rating = $row['rating'];
        $runtime = $row['runtime'];
        $act_table = $row['table'];
        $dir_table = $row['table_director'];
        $img_file = $row['file_path'];
        $release = $row['releasedate'];
    }

    //Rating
    $rquery = "SELECT rating FROM reviews WHERE movie_id = $movie_id";
    $rdb = mysqli_query($conn, $rquery);
    $count = 0;
    $total = 0;
        while($row = mysqli_fetch_assoc($rdb)){
            foreach($row as $cname => $cvalue){
                // Null, Title, Rating, Runtime, Genre, Releasedate
                $count = $count + 1;
                $total = $total + $cvalue;
            }
    }
    
        $score = $total / $count;
    
    
    //Directors
    $dir_query = "SELECT CONCAT(fname, ' ' , lname) as dir_name, $dir_table.director_id FROM directors JOIN $dir_table ON directors.director_id = $dir_table.director_id";
    $dir_db = mysqli_query($conn, $dir_query);
    
    //Actors
    $act_query = "SELECT CONCAT(fname, ' ' , lname) as act_name, $act_table.actor_id FROM actors JOIN $act_table ON actors.actor_id = $act_table.actor_id";
    $act_db = mysqli_query($conn, $act_query);

    $review_query = "SELECT critic_id, rating, written_review FROM reviews WHERE movie_id = $movie_id";
    $review_db = mysqli_query($conn, $review_query);
?>
<html>
    
    <head>
        <?php session_start(); ?>
        <title>Legbreakers</title>
        <link rel="stylesheet" type ="text/css" href="CSS/main.css"/>
        <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
        <link rel="manifest" href="/manifest.json">
        <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
        <meta name="theme-color" content="#ffffff">
    </head>
    
    
    <body>
        <div id="navbar">
            <img src="../Images/whitelogo.png" id="myImage">
            <ul>
                    <li><a href="index.php">Home</a></li>
                    <li><a href="movies.php">Movies</a></li>
                    <li><a href="actors.php">Actors</a></li>
                    <li><a href="directors.php">Directors</a></li>
                    <li><a href="critics.php">Critics</a></li>
                    <li><a href="aboutus.php">About Us</a></li>
            </ul>
            <div id="searchbar">
                <input type="text" name="search" placeholder="Search..">
            </div>
        </div>
        
        <div id="body_container">
            <div id="body_back">
                <div id="title">
                    <h1><?php print $title ?></h1>
                </div>
                </br>
                <div id ="top_body">
                    <div id="poster">
                        <img src=<?php print $img_file; ?> title= "<?php print $title; ?> Movie Poster" class="center">
                    </div>
                    <div id="rating_container">
                        <h3>Bones Broken:</h3>
                        <h2> <?php echo $score ?>/10</h2>
                    </div>
                </div>
                
                
                <div id="info">
                    <h1>Director(s):</h1>
                    <p><?php
                    while($row = mysqli_fetch_assoc($dir_db)) {
                        $dir_id = $row['director_id'];
                        $dir_name = $row['dir_name'];
                        echo nl2br("<h4><a href='director_page.php?director=$dir_id'>$dir_name</a></h4>"); 
                    }        
                    ?></p>
                    <h1>Actors:</h1>
                    <p><?php
                    while($row = mysqli_fetch_assoc($act_db)) {
                        $act_id = $row['actor_id'];
                        $act_name = $row['act_name'];
                        echo nl2br("<h4><a href='actor_page.php?actor=$act_id'>$act_name</a></h4>"); 
                    }        
                    ?></p>
                    <h1>Reviews:</h1>
                    <p><?php
                    while($row = mysqli_fetch_assoc($review_db)) {
                        $critic_id = $row['critic_id'];
                        $rating = $row['rating'];
                        $review = $row['written_review'];
                        $critic_query = "SELECT CONCAT(fname, ' ', lname) as name FROM critics WHERE critic_id = $critic_id";
                        $critic_db = mysqli_query($conn, $critic_query);
                        while($row = mysqli_fetch_assoc($critic_db)) {
                            $critic_name = $row['name'];
                    }
                        echo nl2br("<h4><a href='critic_page.php?critic=$critic_id'>$critic_name</a></h4>" . " <h3>&nbsp;&nbsp;&nbsp;&nbsp;Rating:</h3> " . "&nbsp;&nbsp;&nbsp;&nbsp;$rating" . " <h3>&nbsp;&nbsp;&nbsp;&nbsp;Review:</h3> " . "&nbsp;&nbsp;&nbsp;&nbsp;$review" . "\n\n"); 
                }        
                    ?></p>
                </div>
            </div>    
        </div>
                <!--Note that you can use the variables from the php
                    as long as they are enclosed in a php tag-->
            
            
            <div id="sidebar">
                <h2>Top Rated Movies</h2>
                <ol>
                    <li> <a href="movie_page.php?movie=1">Jaws</a></li>
                    <li> <a href="movie_page.php?movie=2">Pineapple Express</a></li>
                    <li> <a href="movie_page.php?movie=3">Generic Movie</a></li>
                    <li> <a href="movie_page.php?movie=4">Star Wars Episode 1: The Phantom Menace</a></li>
                    <li> <a href="movie_page.php?movie=5">Justice League</a></li>
                </ol>
            </div>
            
            
            
        </div>
    </body>
<?php mysqli_close($conn); ?>
</html>
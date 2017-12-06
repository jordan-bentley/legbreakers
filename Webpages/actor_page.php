<?php 
     include('../PHP/db_connect.php');
    $actor = $_GET['actor']; //Gets the director_id from the url


    //Begin getting information about the requested movie
    // Desired Query goes in the " ".
    $query = "SELECT *, CONCAT(fname, ' ', lname) as name FROM actors WHERE actor_id = $actor";
    /*
        Connects to the database using the connection from the php
        include statement above and stores the returned value as $db,
        also runs the query from above
    */
    $db = mysqli_query($conn, $query);

    while($row = mysqli_fetch_assoc($db)){
            // Null, Title, Rating, Runtime, Genre, Releasedate
        $act_id = $row['actor_id'];
        $name = $row['name'];
        $bio = $row['bio'];
        $movies_in = $row['movies_in'];
        $img_file = $row['file_path'];
    }
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
                    <h1><?php print $name ?></h1>
                </div>
                </br>
                <div id ="top_body">
                    <div id="dir_img">
                        <img src=<?php print $img_file; ?> title= "<?php print $name; ?>" class="center">
                    </div>
                </div>
                
                
                <div id="info">
                   <h2>Biography:</h2>
                        <h4><?php echo $bio; ?></h4>
                    <h2>Movie Appearances</h2>
                        <h4><?php
                        $dir_query = "SELECT movies.movie_id, title FROM movies JOIN $movies_in ON movies.movie_id = $movies_in.movie_id";
                        $dir_db = mysqli_query($conn, $dir_query);
                    while($row = mysqli_fetch_assoc($dir_db)) {
                        $movie_id = $row['movie_id'];
                        $movie_title = $row['title'];
                        echo nl2br("<h4><a href='movie_page.php?movie=$movie_id'>$movie_title</a></h4>"); 
                    }        
                    ?></h4>
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
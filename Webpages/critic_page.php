<?php 
     include('../PHP/db_connect.php');
    $crit = $_GET['critic']; //Gets the director_id from the url


    //Begin getting information about the requested movie
    // Desired Query goes in the " ".
    $query = "SELECT *, CONCAT(fname, ' ', lname) as name FROM critics WHERE critic_id = $crit";
    /*
        Connects to the database using the connection from the php
        include statement above and stores the returned value as $db,
        also runs the query from above
    */
    $db = mysqli_query($conn, $query);

    while($row = mysqli_fetch_assoc($db)){
            // Null, Title, Rating, Runtime, Genre, Releasedate
        $crit_id = $row['critic_id'];
        $name = $row['name'];
        $bio = $row['bio'];
        $img_file = $row['file_path'];
    }
    
    $review_query = "SELECT reviews.movie_id, movies.title, critic_id, reviews.rating, written_review FROM reviews JOIN movies ON movies.movie_id = reviews.movie_id WHERE critic_id = $crit";
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
                    <h1><?php print $name ?></h1>
                </div>
                </br>
                
                
                <div id="info">
                   <h2>Biography:</h2>
                        <h4><?php echo $bio; ?></h4>
                    <h2>Reviews</h2>
                    <p>
                        <?php
                    while($row = mysqli_fetch_assoc($review_db)) {
                        $movie_id = $row['movie_id'];
                        $critic_id = $row['critic_id'];
                        $title = $row['title'];
                        $rating = $row['rating'];
                        $review = $row['written_review'];
                        $critic_query = "SELECT CONCAT(fname, ' ', lname) as name FROM critics WHERE critic_id = $critic_id";
                        $critic_db = mysqli_query($conn, $critic_query);
                        while($row = mysqli_fetch_assoc($critic_db)) {
                            $critic_name = $row['name'];
                    }
                        echo nl2br("<h3><b><a href='movie_page.php?movie=$movie_id'>$title</a></b></h3>" . " <h3>&nbsp;&nbsp;&nbsp;&nbsp;Rating:</h3> " . "&nbsp;&nbsp;&nbsp;&nbsp;$rating" . " <h3>&nbsp;&nbsp;&nbsp;&nbsp;Review:</h3> " . "&nbsp;&nbsp;&nbsp;&nbsp;$review" . "\n\n"); 
                }        
                    ?>
                    </p>
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
<?php 
     include('../PHP/db_connect.php');
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
                    <h1>About Us</h1>
                </div>
                </br>
                
                <div id="info">
                    <p>This website and database were created for our final project in CSC-330 Database Systems 
                    for Dr. Richard Maiti. All of the information presented exists only to showcase how our ideas work
                    and none of it should be taken to be the truth. For example, Nick Fouch, our Project Owner
                    did not act in a movie, despite our website showing that he did.</p>
                    <h2>Our Team</h2>
                    <p>Nick Fouch</p>
                    <p>Isaac Stringer</p>
                    <p>Jordan Bentley</p>
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
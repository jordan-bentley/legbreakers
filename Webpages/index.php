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
                    <h1>Welcome!</h1>
                </div>
                </br>
                
                <div id="info">
                    <p>Welcome to Legbreakers! Your newest home for all your movie information. This is just placeholder text.
                    You shouldn't still be reading this. You should pay attention to our awesome presentation that is
                    going on right now at the podium. The podium. Stop reading and look at the podium. We are probably talking.
                    Listen to us. Legit, stop reading the placeholder text. Nothing good can come from this. It's wasting time.
                    Stop. Why are you still reading this? There is no new information here. This is literally just text to take
                    up space so that our Home Page doesn't look so empty. In reality, this would be filled with a newsletter of
                    sorts. This is just a project however, and thus, the placeholder text. Are you having fun?</p>
                    <p>You have to be to keep reading. Enjoy the rest of our presentation. You still reading? Why? What can
                    be gained? I'm done writing now. Enjoy the works of Lorem Ipsum:
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quis augue lacus. Phasellus diam massa, efficitur 
                    sit amet risus in, blandit interdum risus. Sed lobortis nibh eget ex vulputate placerat. Ut quis condimentum nibh, 
                    at pharetra magna. Maecenas turpis metus, placerat sed ornare non, tempor vel diam. Nunc turpis leo, molestie sit amet 
                    nulla vitae, fringilla interdum dui. Suspendisse quis augue consequat diam convallis pulvinar. Quisque quis massa commodo 
                    massa dictum tempus vel at lorem. Proin finibus at enim at placerat. Integer turpis tortor, lobortis eu eros vitae, luctus 
                    vulputate dui. Nullam et mollis neque. Phasellus vitae metus ut eros consequat hendrerit id at nibh. Proin vitae felis eros. 
                    Nullam tristique, dolor at tincidunt pulvinar, ex purus efficitur purus, pretium ullamcorper ex sem eu risus. Praesent sagittis 
                    porttitor nulla, non molestie leo venenatis quis. In commodo ex sit amet pellentesque rutrum.</p>
                    <p>Are you still reading? Why? You just read a paragraph of Latin-gibberish.</p>
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
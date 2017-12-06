<html>
    
    <head>
        <?php session_start(); ?>
        <title>Legbreakers</title>
        <link rel="stylesheet" type ="text/css" href="CSS/main.css"/>
    </head>
    
    
    <body>
        <div id="navbar">
            <img src="../Images/bone_white.png" id="myImage">
            <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#movies">Movies</a></li>
                    <li><a href="#actors">Actors</a></li>
                    <li><a href="#directors">Directors</a></li>
                    <li><a href="#critics">Critics</a></li>
                    <li><a href="#aboutus">About Us</a></li>
            </ul>
            <div id="searchbar">
                <input type="text" name="search" placeholder="Search..">
            </div>
        </div>
        
        <div id="body_container">
            
            <div id="body_back">
                <h2>MAIN INFORMATION HERE</h2>
            </div>
            
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
</html>
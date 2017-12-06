<div id = "info">
    <div class="portlet-body">
     <?php
     include('../PHP/db_connect.php');
     ?>
     </div>
 </div>
 
<?php 

$tablequery = "SELECT * FROM actors_in_jaws"; 
$db = mysqli_query($conn, $tablequery);



//Correct way - get rid of if statements

$movie_id = '5';

$review_query = "SELECT critic_id, rating, written_review FROM reviews WHERE movie_id = $movie_id";
$review_db = mysqli_query($conn, $review_query);

$dir_name = [];

/*while($row = mysqli_fetch_assoc($review_db)){
        foreach($row as $cname => $cvalue){
            var_dump($row);
            print $cvalue . ' ';
        }
}

while($row = mysqli_fetch_assoc($review_db)) {
    echo "critic id: " . $row['critic_id'] . " - Rating: " . $row['rating'] . " - Review: " . $row['written_review'];  
}

*/

// Fetch and display the result set value.
/*
$result = mysqli_query($conn, $query);
$row = mysqli_fetch_row($result);
print_r($row);
*/

// Disconnect the database from the database handle.

?>

<!-- Begin HTML Code --> 
    

<html>
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
        echo nl2br("critic name: " . $critic_name . " - Rating: " . $rating . " - Review: " . $review . "\n"); 
    }        


?>
</p>
<?php mysqli_close($conn); ?>    
</html>
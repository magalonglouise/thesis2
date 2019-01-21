<?php
include_once("db_connect.php");
if(!empty($_POST['rating']) && !empty($_POST['Id'])){
	$Id = $_POST['Id'];
	$userID = 1234567;		
	$insertRating = "INSERT INTO feedback (Id, userId, ratingNumber, title, comments, created, modified) VALUES ('".$Id."', '".$userID."', '".$_POST['rating']."', '".$_POST['title']."', '".$_POST["comment"]."', '".date("Y-m-d H:i:s")."', '".date("Y-m-d H:i:s")."')";
	mysqli_query($conn, $insertRating) or die("database error: ". mysqli_error($conn));		
	echo "rating saved!";
}
?>
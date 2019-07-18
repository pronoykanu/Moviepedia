<?php

session_start();

$con = mysqli_connect('localhost','root','','moviereviews');



$m = $_POST['m'];
$movie_collection= $_POST['movie_collection'];



	$qy= "update moviedb set movie_collection='$movie_collection' where movieid='$m' ";
	mysqli_query($con, $qy);
	header('location:admin.php');




?>
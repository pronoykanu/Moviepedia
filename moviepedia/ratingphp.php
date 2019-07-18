<?php

session_start();

$con = mysqli_connect('localhost','root','','moviereviews');



$m = $_POST['m'];
$mov_rating= $_POST['mov_rating'];



	$qy= "INSERT INTO `rating`(`rate_val`,`movieid`) VALUES ('$mov_rating','$m')";
	mysqli_query($con, $qy);
	header('location:rating.php');




?>
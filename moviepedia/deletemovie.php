<?php 
include("header.php");

session_start();

$con = mysqli_connect('localhost','root','','moviereviews');

$aa=$_POST['aa'];

$qy= "CALL deletemovie($aa);";
	mysqli_query($con, $qy);
	header('location:admin.php');


?>
<?php 

session_start();




$con = mysqli_connect('localhost','root','','moviereviews');



$movie_name = $_POST['movie_name'];
$movie_desc = $_POST['movie_desc'];
$movie_img=$_POST['movie_img'];
$genreid=$_POST['genreid'];


$q = " select movie_name from movie  where movie_name='$movie_name'";

$result = mysqli_query($con, $q);

$num = mysqli_num_rows($result);

if($num!=0)
{
	echo'




<html>
<head>
<style>
.button {
    background-color: #94c978; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 4px 2px;
    cursor: pointer;
}

.button5 {font-size: 24px;}
span{
 background-color: #ffd500
}
</style>
</head>

<body background="61160-8sbe5pbpfw.jpg">
	<center>
<p>
<h2><span><b>Crop already exists</b></span></h2>
        <button class="button button5"><a href=".php"></a></button>
        <button class="button button5"><a href="php">Log Out</a></button>


</center> 
</body>
</html>
';
    }
else{

	$qy= " insert  into movie(movie_name , movie_desc, movie_img,genreid) values ('$movie_name' , '$movie_desc' , '$movie_img', '$genreid') ";
	mysqli_query($con, $qy);
	header('location:admin.php');
}



?>
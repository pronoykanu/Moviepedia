<?php
if(isset($_POST["login"])){
session_start();


include("dbconnect.php");
if($_POST['iname']=="pronoy" and $_POST['ipassword']=="admin"){
	header('location:admin.php');
}
else{

mysqli_select_db($dbconnect, 'moviereviews');

$username = $_POST['iname'];
$password = $_POST['ipassword'];


$q ="SELECT * FROM userdet where user_name='$username' and user_password='$password'";

$result = mysqli_query($dbconnect, $q);

$num = mysqli_num_rows($result);

if($num == 1){
	
	$_SESSION['name'] = $username;
	header('location:index.php');


}else
{
	echo "Wrong Combination";
	header('location:login.php');
}

}
}
?>
<?php
	$dbconnect=mysqli_connect('localhost','root','','moviereviews');
	if(mysqli_connect_errno()){
		echo "Connection Error". mysqli_connect_error();
	}
	?>
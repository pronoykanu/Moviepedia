<?php 
	include("header.php"); 
?>
<?php
			  
				$genre_sql="SELECT * FROM `movie` where movieid=".$_GET['id'];
				$genre_query=mysqli_query($dbconnect, $genre_sql);
				$genre_rs=mysqli_fetch_assoc($genre_query);
				
				$mov_sql="SELECT * FROM `moviedb` where movieid=".$_GET['id'];
				$mov_query=mysqli_query($dbconnect, $mov_sql);
				$mov_rs=mysqli_fetch_assoc($mov_query);
				
				$rat_sql="SELECT avg(rate_val) FROM `rating` where movieid=".$_GET['id'];
				$rat_query=mysqli_query($dbconnect, $rat_sql);
				$rat_rs=mysqli_fetch_assoc($rat_query);
			?>
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
h2{
	font-family:Verdana, sans-serif;
	text-align: center;
}
img{
	border-radius: 4px;
	 display: block;
    margin-left: auto;
    margin-right: auto
	
	
}
div.w3-container{
				text-align:center;
				text-align: justify;
				margin-right:200px;
			}
			p{
				font-weight:50;
				line-height:1.5;
				font-family: Garamond;
			}
			strong{
				text-align: center;
				font-family:Verdana, sans-serif;
				font-size:25px;
				
			}
</style>
<?php
	do{?>
		<h2><?php echo $genre_rs['movie_name']?></h2>
		<img src='images/<?php echo $genre_rs['movie_img']?>' width="504px" height="749px" align="center"></img>
		<h2> Rating : <?php echo $rat_rs['avg(rate_val)'] ?></h2>
		<div class="w3-container"> 
		<strong>Plot: </strong>
		<p><?php echo $genre_rs['movie_desc']?></p>
		</div>
	<?php
	}
	while($genre_rs=mysqli_fetch_assoc($genre_query))
?>
<?php
	do{?> 
		<strong>Movie Collection: </strong>
		<p><?php echo $mov_rs['movie_collection']?></p>
		<strong>Starring: </strong>
		<p><?php echo $mov_rs['movie_actors']?></p>
		<strong>Director: </strong>
		<p><?php echo $mov_rs['movie_director']?></p>
		</div>
	<?php
	}
	while($mov_rs=mysqli_fetch_assoc($mov_query))
?>
<?php

?>

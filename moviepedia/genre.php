<?php
include("header.php");
?>
<?php
			  
				$genre_sql="SELECT * FROM `movie` where genreID=genreid and genreID=".$_GET['id'];
				$genre_query=mysqli_query($dbconnect, $genre_sql);
				$genre_rs=mysqli_fetch_assoc($genre_query);
			?>
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"><html>
			<style>
			img{
				margin-left:100px;
				margin-top:20px;
				border-radius:4px
			}
			div.w3-container{
				text-align:left;
				text-align: justify;
				margin-right:200px;
                background-color: aliceblue;
			}
			p{
				font-weight:50;
				line-height:1.5;
				font-family: Garamond;
			}
			h2{
				font-weight:500;
			}
                body{
                    background-image: url("images/posters7.png");
                }
			
			</style>
			
			<?php
			do{ ?>
<body>
				<table>
			<tr>
				<th>
				<img src='images/<?php echo $genre_rs['movie_img']?>' width="144px" height="214px">
				</th>
				
				<th>
				<div class="w3-container"> 
					  <h2><a href="moviedesc.php?id=<?php  echo $genre_rs['movieid']?>"><?php echo $genre_rs['movie_name']?></a></h2>
					  <p><?php echo $genre_rs['movie_desc']?></p>
					</div></th>
			</tr>
			</table><?php
				}
				while($genre_rs=mysqli_fetch_assoc($genre_query))
			?>
</body>
</html>
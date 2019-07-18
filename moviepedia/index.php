<?php
	include("header.php");

			  
				$genre_sql=" (SELECT * FROM movie ORDER BY movieid DESC LIMIT 3) ORDER BY movieid; ";
				$genre_query=mysqli_query($dbconnect, $genre_sql);
				$genre_rs=mysqli_fetch_assoc($genre_query);
			?>
<html>
   <head>
       <meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
       
       
    <style>
        
        
       body{
           padding: 0;
           margin: 0;
            background-image: url("images/posters7.png");
        }
       
       .mySlides {display:none;
        position: relative;
        max-height: 3000px;
           max-width: 500px;
        
        }
        hello{
            float: right;
            
                
        } 
        
        w3{
            margin-top:0px;
        }
       div.w3-container{
				text-align:left;
				text-align: justify;
				margin-right:0px;
                background-color: aliceblue;
			}
        
        p{
				font-weight:50;
				line-height:1.5;
				font-family: Garamond;
                color: black;
			}
        h1{
            color: black;
            align-content: center;
            font-family: Arial, Helvetica, sans-serif;
            
        }
        
        
       </style>
    
    
    
    </head>
<body>
    <table><tr><td>

    <div class="w3" style="max-width:1000px">
  <img class="mySlides" src="images/Action1.jpg">
  <img class="mySlides" src="images/Comedy1.jpg" >
  <img class="mySlides" src="images/Crime1.jpg" >
        <img class="mySlides" src="images/Horror2.jpg" >
        <img class="mySlides" src="images/Sci-fi1.jpg" >
        <img class="mySlides" src="images/Thriller1.jpg" >
        <img class="mySlides" src="images/War1.jpg" >
        
</div>
        </td>
        <td><centre><h1>LATEST MOVIES</h1></centre>
        
    <?php
			do{ ?>
    <div class="hello">
        
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
    </div>
        </td></tr></table>
    
        
    
    
    
    

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 4000); // Change image every 2 seconds
}
</script>

</body>
</html>
    
    
    
    
    
    
    
 
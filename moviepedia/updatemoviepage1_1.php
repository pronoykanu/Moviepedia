<?php
include("header.php");

?>
<html>

<br>

<style>
* {
    box-sizing: border-box;
}
    table{
        margin-left: 500px;
        font-family: Arial, Helvetica, sans-serif;
        
    }
    body{
        background-image: url(images/posters7.png);
    }
input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
    font-family: Arial, Helvetica, sans-serif;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
    font-family: Arial, Helvetica, sans-serif;
}

input[type=submit] {
    background-color: #660a0a;
    color: blue;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
    font-family: Arial, Helvetica, sans-serif;
}

input[type=submit]:hover {
    background-color: #660a0a;
    font-family: Arial, Helvetica, sans-serif;
    color: white;
    
}

.container {
	margin-left=500px;
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

.col-25 {
    float: left;
    width: 100%;
    margin-top: 6px;
    font-family: Arial, Helvetica, sans-serif;
    
}

.col-75 {
    float: left;
    width: 100%;
    margin-top: 6px;
    font-family: Arial, Helvetica, sans-serif;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
    
    font-family:  Arial, Helvetica, sans-serif;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
img{
	
	margin-left:60px;
}
p{
	margin-left:60px;
}
.button {
    background-color: #660a0a;
    border: none;
    color: white;
    padding: 10px 25px;
    border-radius: 4px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 1px 1px;
    cursor: pointer;
	top:50%;
	left:50%;
}

</style>
    <body>
	
	<table >
        <tr>
        <th>
        
        
        
        <h2>UPDATE MOVIE BOX OFFICE</h2>
            <div class="container">
<form action="updatemovie.php" name="ab" method="post">
    <div class="row">
        <div class="col-25">
		
            <label for="fname">Update Box Office Collection:</label>
        </div>
        
			<div class="col-75">
                
      <select id="country" name="m">
          
					<?php 
					$res=mysqli_query($link,"select movieid,movie_name from movie");
          echo"<option>---select---</option>";
					
					while($row=mysqli_fetch_array($res))
					{
                        echo"
						 <option value="'$row['movieid'].$row['movie_name']'"></option>";
					}
                         ?>           
                
            </select>				
            </div>
        </div>
			<div class="row">
                <div class="col-25">
              
                    <label for="subject">New box office collection:</label>
                </div>
                <div class="col-75">
        <input type="text" id="desc" name="desc" placeholder="update box office">
                </div>
    </div>
		<div class="row">	  
    
       <input type="Submit" name="submit" value="submit">  
            <input type="reset" name="reset" value="reset"></div>
                <div>
    
    
    
                </div>
		
	</form>
            </div>
            </th>
        </tr>
        </table>
        
                
                
  
 
</body>
    
</html>
        
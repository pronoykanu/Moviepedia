<?php
include("header.php");

                $link = mysqli_connect ("localhost","root","");
                mysqli_select_db ($link,"moviereviews");

?>
<!DOCTYPE html>
<html>
<head>
<style>
body{
 background-image:url("images/posters7.png");
  background-repeat:no-repeat;
background-size:cover;
position:relative;
    font-family: Arial, Helvetica, sans-serif;
}
     .container {
	margin-left=500px;
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 30px;
        
        
        box-sizing: content-box;
        width: 15%;
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
       input[type=reset] {
    background-color: #660a0a;
    color: blue;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
           
    font-family: Arial, Helvetica, sans-serif;
}

input[type=reset]:hover {
    background-color: #660a0a;
    font-family: Arial, Helvetica, sans-serif;
    color: white; 
    
}

</head></style>

<body >
	<center>
	<h2>DELETE MOVIE</h2>
		<form action="deletemovie.php" name="aa" method="post">
            <div class="container">
                <table>
		<tr>
            Movie To Be Deleted
        </tr>
				
                    
                <br>    
                    
            <tr><td>&nbsp;
                <br>
                 <select name="aa" style="width:173px;"> 
					<?php 
					$res=mysqli_query($link,"select movieid,movie_name from movie order by movieid");
					echo "<option>--Select--</option>";
					while($row=mysqli_fetch_array($res))
				{
					echo "<option value='".$row['movieid']."'>".$row['movie_name']."</option>";
					}
					?>
                </select>	
            				
                    &nbsp;
                    </td>
			
		</tr>
        
            <tr>
           
                <td><br>
                    <input type="Submit" name="submit" value="submit"> 
			<input type="reset" name="reset" value="reset"></td>
            </tr>
	
                </table></div></form>
<h4><b>All fields marked (*) are mandatory</b></h4>




</center> 
</body>
    </head>
</html>




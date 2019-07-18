<?php
               
include("header.php");

                $link = mysqli_connect ("localhost","root","");
                mysqli_select_db ($link,"moviereviews");
?>

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

   
   
    input[type=submit]:hover {
    background-color: #660a0a;
    font-family: Arial, Helvetica, sans-serif;
    color: white;
    
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

<body>
	<center>
        
            <h2>UPDATE MOVIE BOX OFFICE</h2>
            
<form action="updatemovie.php" name="ab" method="post">
    
    <div class="container">
    
    <table>
		<tr>
			<td width=100% >Update Box Office Collection:</td>
        </tr>
        <tr><td>&nbsp;
            
      <select name="m" style="width:220px;">
					<?php 
					$res=mysqli_query($link,"select movieid,movie_name from movie");
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
              <tr>&nbsp;
                  <td width=50%>New Box Office Collection:</td></tr>
        <tr>
            <td> &nbsp;<input type="text" name="movie_collection" size="30" maxlength="20" border-radius="4px"  required></td>
		</tr>   
    
       <tr>
			<td><br>
                <input type="Submit" name="submit" value="submit">
        
           &nbsp;&nbsp;
			<input type="reset" name="reset" value="reset"></td>
        </tr></table></div>
	</form>

<h4><b>All fields marked (*) are mandatory</b></h4>         
                
                
  
</center> 
</body>
    </head>
</html>
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                

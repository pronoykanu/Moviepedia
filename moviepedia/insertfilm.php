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
    padding: 10px 15px;
    border-radius: 4px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 1px 1px;
    cursor: pointer;
	top:50px;
    float: right;
}

</style>
    <body>
<table>
<tr>



<th>
<h2>Enter The Movie Details</h2>
<div class="container">
  <form action="insertfilm.php" method="post">
    <div class="row">
      <div class="col-25">
        <label for="fname">Movie Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="name" name="name" placeholder="Movie Name" required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Movie Image</label>
      </div>
      <div class="col-75">
          
          <input type="file" name="fileToUpload" id="fileToUpload">
    


          
         




        
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="country">Genre</label>
      </div>
      <div class="col-75">
        <select id="country" name="genre" required>
          <option value="1">Action</option>
          <option value="2">Comedy</option>
          <option value="6">Horror</option>
		  <option value="3">Sci- Fi</option>
		  <option value="7">Thriller</option>
		  <option value="4">War</option>
		  <option value="5">Crime</option>
        </select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Description</label>
      </div>
      <div class="col-75">
        <textarea id="desc" name="desc" placeholder="Write something.." style="height:200px"></textarea>
      </div>
    </div>
    <div class="row">
      <input type="submit" value="submit" name="submit">
        <div class="row">
      <input type="reset" value="reset" name="Reset">
        
    </div>
      <div>
      
      
        </div></div>
  </form>
</div>



</th>
</tr>



</table>
<?php
include("dbconnect.php");
if (isset($_POST["submit"]))
{
$movie_name=$_POST['name'];
$movie_image=$_POST['fileToUpload'];
$genre=$_POST['genre'];
$desc=$_POST['desc'];

$sql="INSERT INTO `movie`(`movie_name`, `movie_desc`, `movie_img`, `genreid`) VALUES ('$movie_name','$desc','$movie_image','$genre')";
if($dbconnect->query($sql) === TRUE)
	{
		echo "Movie INSERT sucessfull";
		
	}
else
{
	echo "Error, Couldn't add";
}
}
?>
    </body></html>

<html>
<title>Moviepedia</title>
<?php
include("dbconnect.php");

?>
<style>
div.logo{
border: 1px red;
    margin-right: 600px;
    margin-left:520px;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #cc4747;
}

li {
    float: left;
    border-right:1px solid #912404;
}

li:last-child {
    border-right: none;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #660a0a;
}

.active {
    background-color: #660a0a;
}
div.p{
	font-family: Arial, Helvetica, sans-serif;
}
li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: #660a0a;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>

<body>
	<div class="logo">
        <img src="images\jujujuj.PNG">
	</div>
	<ul>
  <li><a class="active" href="index.php"><div class="p">Home</div></a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn"><div class="p">Genres</div></a>
    <div class="dropdown-content">
	  <?php
		include("navigation.php");
	  ?>
	  
    </div>
  </li>
  <li><a href="movies.php"><div class="p">Movies</div></a></li>
  <li><a href="rating.php"><div class="p">Rating</div></a></li>
  <li style="float:right"><a href="#about"><div class="p">About</div></a></li>
<li style="float:right"><a href="login.php"><div class="p">Admin</div></a></li>
        <li style="float:right"><a href="login.php"><div class="p">Logout</div></a></li>
</ul>
<?php 
include("header.php");


?>
<html>
    <style>
        img{
            
            margin-left: 60px;
        
  border-radius: 50%;

        }
        p{ margin-left: 60px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 20px;
        }
        .button {
            
    background-color: #af4c4c;
    border: none;
             border-radius: 4px;
    color: white;
    padding: 10px 30px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    font-family: Arial, Helvetica, sans-serif;
            
}
        .button:hover{
            color: white;
            
        }
        table{
            width: 80%;
        }
        body{
            background-image: url("images/posters7.png");
        }
        mark{
            background-color: #af4c4c;
        }
       
        
    </style><br><br>
    <body>
 <table>
    <tr>
       <th> 
           <img src="images/girll.png" height="214px" alt="Avatar" style="width:200px" >
           <p><mark>Hello Admin</mark></p>
           <p> <mark>What would you like to do?</mark></p>
        </th>
     <th colspan=3>
       
         <button class="button"><a href="insertfilm.php">Insert A Movie</a></button><br><br>
         <button class="button"><a href="updatemoviepage.php">Update Box Office Collection</a></button><br><br>
         <button class="button"><a href="deletemoviepage.php">Delete A Movie</a></button><br><br>
          
        
        </th>
        
     </tr>
    </table>
    </body>
 
</html>
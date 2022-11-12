<?php
   $db = new mysqli("localhost","root","","diamond");
   if($db->connect_error){
       die("Database Not found");
   }
?>
<?php
   $db = new mysqli("localhost","root","","IMS");
   if($db->connect_error){
       die("Database Not found");
   }
?>
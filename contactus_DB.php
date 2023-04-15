<?php
   $db = new mysqli("localhost","root","","diamond","contact us");
   if($db->connect_error){
       die("Database Not found");
   }
?>
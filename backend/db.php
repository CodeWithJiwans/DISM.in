<?php 

$conn = mysqli_connect("localhost","root","","IMS");

if(!$conn){
    echo "Error whiling connecting database!" .  mysqli_connect_error();
}


?>
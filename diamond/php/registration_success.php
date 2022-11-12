<?php
    require("../database.php");

    $fullname = $_POST["fullname"];
    $email = $_POST["email"];
    $password = $_POST["password"];

    $insert_data = "INSERT INTO `users`(`fullname`, `email`, `password`) VALUES ('$fullname','$email','$password')";

    if ($db->query($insert_data)) {
        echo "Sign in Success :)";
    } else {
        echo "Sign in failed !";
    }
?>
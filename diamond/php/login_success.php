<?php
require("../database.php");
$email = $_POST["email"];
$password = $_POST["password"];

$data_check = "SELECT email FROM users WHERE email = '$email'";

$response = $db->query($data_check);

if ($response->num_rows != 0) {
    $data_check_password = "SELECT fullname, email, password FROM users WHERE email = '$email'
    AND password = '$password'";
    $pass_success = $db->query($data_check_password);

    if ($pass_success->num_rows != 0) {
        echo "Login Success";
        session_start();
        $row = $pass_success->fetch_assoc();
        $fullname = $row['fullname'];
        $_SESSION['fullname'] = $fullname;
    } else {
        echo "Password Not match";
    }
} else {
    echo "User not found";
}
?>
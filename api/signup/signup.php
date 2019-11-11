<?php
require "../util/conn.php";

$type = $_POST['type'];
$name = $_POST['name'];
$first_lastname = $_POST['first_lastname'];
$second_lastname = $_POST['second_lastname'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$password = $_POST['password'];

$sql = "INSERT INTO user (type, name, first_lastname, second_lastname, email, phone, password) " .
    "VALUES ('$type','$name','$first_lastname','$second_lastname','$email','$phone','$password');";
$result = mysqli_query($conn, $sql);
header('Content-type: application/json');
if (!$result) {
    echo json_encode(["message" => "fail"]);
} else {
    echo json_encode(["message" => "success"]);
}
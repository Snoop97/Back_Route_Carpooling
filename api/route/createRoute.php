<?php
require "../util/conn.php";


$type = $_POST['type'];
$license_plate = $_POST['license_plate'];
$brand = $_POST['brand'];
$sail_point = $_POST['sail_point'];
$arrival_point = $_POST['arrival_point'];
$date = $_POST['date'];
$time = $_POST['time'];

$sql = "INSERT INTO route (type, license_plate, brand, sail_point, arrival_point, date, time) " .
    "VALUES ('$type','$license_plate','$brand','$sail_point','$arrival_point','$date','$time');";
$result = mysqli_query($conn, $sql);
header('Content-type: application/json');
if (!$result) {
    echo json_encode(["message" => "fail"]);
} else {
    echo json_encode(["message" => "success"]);
}
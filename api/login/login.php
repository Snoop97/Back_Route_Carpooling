<?php
require "../util/conn.php";
$email = $_POST['email'];
$password = $_POST['password'];
$mysql_query = "select * from user where email='$email' and password='$password';";
$result = mysqli_query($conn, $mysql_query);
header('Content-type: application/json');
if(mysqli_num_rows($result) > 0)
{
    echo json_encode(["message" => "success"]);
}
else
{
    echo json_encode(["message" => "fail"]);
}
?>
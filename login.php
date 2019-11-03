<?php
require "conn.php";
$user_name = $_POST['user_name'];
$user_pass = $_POST['password'];
$mysql_query = "select * from duenio where email_due = '$user_name' and psw_due = '$user_pass';";
$result = mysqli_query($conn, $mysql_query);
if(mysqli_num_rows($result) > 0)
{
    echo "Bienvenido";
}
else 
{
    echo "login not success";    
}
?>
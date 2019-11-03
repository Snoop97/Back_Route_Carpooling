<?php
require "conn.php";
$nom_due = $_POST['nom_due'];
$apePat_due = $_POST['apePat_due'];
$apeMat_due = $_POST['apeMat_due'];
$tel_due = $_POST['tel_due'];
$email_due = $_POST['email_due'];
$psw_due = $_POST['psw_due'];

$mysql_query = "insert into duenio (nom_due,apePat_due,apeMat_due,tel_due,email_due,psw_due) values('$nom_due','$apePat_due','$apeMat_due','$tel_due','$email_due','$psw_due')";

if($conn->query($mysql_query) == true)
{
    echo "Registro exitoso";
}
else 
{
    echo "Ocurrio un error: " . $mysql_query . "<br>" . $conn->error;    
}
$conn->close();
?>
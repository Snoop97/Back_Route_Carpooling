<?php
require "conn.php";
$num_placa = $_POST['num_placa'];
$marca = $_POST['marca'];
$par_ini = $_POST['par_ini'];
$par_fin = $_POST['par_fin'];
$par1_ = $_POST['par1_'];
$fecha = $_POST['fecha'];
$hora = $_POST['hora'];

$mysql_query = "insert into ruta (num_placa,marca,par_ini,par_fin,par1_,fecha,hora) values('$num_placa','$marca','$par_ini','$par_fin','$par1_','$fecha','$hora')";

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
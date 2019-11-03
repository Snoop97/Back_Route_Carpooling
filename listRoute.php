<?php
require "conn.php";

$query = mysqli_query($conn, "select * from ruta order by id_rut asc");
$number_of_rows = mysqli_num_rows($query);
if($number_of_rows > 0)
{
    while($row=mysqli_fetch_assoc($query))
    {
        $flag[] = $row;
    }
}
header('Content-Type: application/json');
echo json_encode(array("ruta"=>$flag));
mysqli_close($conn);

?>
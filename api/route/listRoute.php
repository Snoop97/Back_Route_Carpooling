<?php
require "../util/conn.php";

$sql = "select * from route";
$result = mysqli_query($conn, $sql);
$rows = array();
while($r = mysqli_fetch_assoc($result)) {
    $rows[] = $r;
}
print json_encode($rows);
header('Content-type: application/json');
if (!$result) {
    echo json_encode(["message" => "fail"]);
} else {
    echo json_encode($rows);
}
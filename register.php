<?php
require "conn.php";
$type = $_POST['type'];
$name = $_POST['name'];
$first_lastname = $_POST['first_lastname'];
$second_lastname = $_POST['second_lastname'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$password = $_POST['password'];

//$mysql_query = "insert into user (type,name,first_lastname,second_lastname,email,phone,password) values ('$type', '$name','$first_lastname','$second_lastname','$email','$phone','$password');";
//$mysql_query = "insert into user (type,name,first_lastname,second_lastname,email,phone,password) values ('1', 'A','A','A','A','A','A');";
$sql = "INSERT INTO user (type,name,first_lastname,second_lastname,email,phone,password)
    VALUES (?,?,?,?,?,?,?)";
$stmt = mysqli_prepare($conn, $sql);
$stmt->bind_param("sssssss", $type,$name, $first_lastname, $second_lastname, $email, $phone, $password);
$stmt -> execute();
echo $stmt -> affected_rows;
echo $stmt -> error;
//header('Content-type: application/json');
//$insert = $conn->prepare($mysql_query);
//$insert -> exec();
//$result = $insert -> affected_rows;
//echo $result;
//$conn->exec($mysql_query);
//echo "New record created successfully";
//if ($conn->query($mysql_query) === TRUE) {
//    echo "New record created successfully";
//} else {
//    echo "Error: " . $mysql_query . "<br>" . $conn->error;
//}
$conn->close();
?>

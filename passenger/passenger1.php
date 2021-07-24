<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "project5");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$name = mysqli_real_escape_string($link, $_REQUEST['name']);
$addharno = mysqli_real_escape_string($link, $_REQUEST['addharno']);
$age = mysqli_real_escape_string($link, $_REQUEST['age']);
$dob = mysqli_real_escape_string($link, $_REQUEST['dob']);
$sex = mysqli_real_escape_string($link, $_REQUEST['sex']);
 
// Attempt insert query execution
$sql = "INSERT INTO passenger_personal (name,addharno,age,dob,sex) VALUES ('$name', '$addharno', '$age', '$dob', '$sex')";
if(mysqli_query($link, $sql)){
    $last_id = mysqli_insert_id($link);
    echo "Records added successfully. Your ID generated is: ". $last_id;
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
// Close connection
mysqli_close($link);
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Record Form</title>
</head>
<body>
<br>
<p>
<a href=passenger_contact.html>Proceed to fill up your contact information</a>
</p>
</body>
</html>


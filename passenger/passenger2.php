<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "project5");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$contactno = mysqli_real_escape_string($link, $_REQUEST['contactno']);
$P_ID = mysqli_real_escape_string($link, $_REQUEST['P_ID']);
$emailid = mysqli_real_escape_string($link, $_REQUEST['emailid']);
$passportno = mysqli_real_escape_string($link, $_REQUEST['passportno']);
$address = mysqli_real_escape_string($link, $_REQUEST['address']);

// Attempt insert query execution
$sql = "INSERT INTO passenger_contact(contactno,P_ID,emailid,passportno,address) VALUES ('$contactno', '$P_ID', '$emailid', '$passportno', '$address')";
if(mysqli_query($link, $sql)){
    $last_id = mysqli_insert_id($link);
    echo "Records added successfully. Your ID generated is: '$P_ID' ";
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
<a href=passenger_payment.html>Proceed for payment</a>
</p>
</body>
</html>

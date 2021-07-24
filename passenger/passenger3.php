<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "project5");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$P_ID = mysqli_real_escape_string($link, $_REQUEST['P_ID']);
$methodno = mysqli_real_escape_string($link, $_REQUEST['methodno']);
$billingaddr = mysqli_real_escape_string($link, $_REQUEST['billingaddr']);
$cardno = mysqli_real_escape_string($link, $_REQUEST['cardno']);
$code = mysqli_real_escape_string($link, $_REQUEST['code']);

// Attempt insert query execution
$sql = "INSERT INTO passenger_payment(P_ID,methodno,billingaddr,cardno,code) VALUES ('$P_ID', '$methodno', '$billingaddr', '$cardno', '$code')";
if(mysqli_query($link, $sql)){
    $last_id = mysqli_insert_id($link);
    echo "Payment successfull.<br>Please remember the ID(PNR) generated by transction and proceed to confrim and print the ticket.<br> Your Final ID(PNR) generated is: ".$last_id;
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
<a href=../flights/final.php>Proceed to confirm and print ticket</a>
</p>
</body>
</html>
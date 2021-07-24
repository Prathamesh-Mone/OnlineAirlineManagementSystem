<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "project5");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
// Escape user inputs for security
$F_ID = mysqli_real_escape_string($link, $_REQUEST['F_ID']);
$ticketno = mysqli_real_escape_string($link, $_REQUEST['ticketno']);
$name = mysqli_real_escape_string($link, $_REQUEST['name']);
$dt_cancel = mysqli_real_escape_string($link, $_REQUEST['dt_cancel']);
$sql0 = "INSERT INTO passenger_cancel(name,F_ID,ticketno,dt_cancel) VALUES ('$name','$F_ID','$ticketno','$dt_cancel')";
if(mysqli_query($link, $sql0)){
    echo "Your request for cancelation is accepted. <br>";
} else{
    echo "ERROR: Could not able to execute $sql0. " . mysqli_error($link);
}
$sql4 = "UPDATE passenger_cancel SET P_ID=(SELECT P_ID FROM passenger_payment WHERE T_ID=(SELECT T_ID FROM passenger_ticket WHERE ticketno='$ticketno')) WHERE ticketno='$ticketno'";
if(mysqli_query($link, $sql4)){
    echo "Deleting your personal details...... <br>";
} else{
    echo "ERROR: Could not able to execute(Please enter correct name) $sql4. " . mysqli_error($link);
}
$sql2 = "DELETE FROM passenger_contact WHERE P_ID=(SELECT P_ID FROM passenger_payment WHERE T_ID=(SELECT T_ID FROM passenger_ticket WHERE ticketno='$ticketno'))";
if(mysqli_query($link, $sql2)){
    echo "Deleting your contact details...... <br>";
} else{
    echo "ERROR: Could not able to execute (Please enter correct details)$sql2. " . mysqli_error($link);
}
$sql3 = "DELETE FROM passenger_personal WHERE P_ID=(SELECT P_ID FROM passenger_payment WHERE T_ID=(SELECT T_ID FROM passenger_ticket WHERE ticketno='$ticketno'))";
if(mysqli_query($link, $sql3)){
    echo "Deleting your personal details..... <br>";
} else{
    echo "ERROR: Could not able to execute $sql3. " . mysqli_error($link);
}
$sql1 = "DELETE FROM passenger_payment WHERE T_ID=(SELECT T_ID FROM passenger_ticket WHERE ticketno='$ticketno')";
if(mysqli_query($link, $sql1)){
    echo "Clearing your transactions...... <br>";
} else{
    echo "ERROR: Could not able to execute (Please check your entered details.)$sql1. " . mysqli_error($link);
}
$sql = "DELETE FROM passenger_ticket WHERE ticketno='$ticketno'";
if(mysqli_query($link, $sql)){
    echo "Your ticket is been successfully canceled!!Hope to see you back again.<br>";
} else{
    echo "ERROR: Could not able to execute (Please enter correct ticket number.)$sql. " . mysqli_error($link);
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
<a href=cities.html>Check for other flights...</a>
</p>
<br>
<p>
<a href=../firstpage.html>Go back towards main page</a>
</p>
</body>
</html>

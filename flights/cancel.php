<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Record Form</title>
</head>
<body>
<form action="cancel1.php" method="post">
<p>
<label for='F_ID'>Select the flightno to delete  your filghts</label>
<select name="F_ID">
<?php 
$connection = mysqli_connect("localhost", "root", "", "project5");
$sql = mysqli_query($connection, "SELECT * FROM flight");
while ($row = $sql->fetch_assoc()){
echo '<option value='."\"".$row['F_ID']."\"".'>'.$row['F_ID'].'</option>';
}
?>
</select>
    <p>
        <label for="ticketno">Please enter your ticket number:</label>
        <input type="number" name="ticketno" id="ticketno">
    </p>
    <p>
        <label for="name">Please enter your name as on the ticket:</label>
        <input type="text" name="name" id="name">
    </p>
    <p>
        <label for="dt_cancel">Please enter the date of travel(to be canceled):</label>
        <input type="date" name="dt_cancel" id="dt_cancel" min="2020-11-04">
    </p>
<br><br>
	<input type="submit" value="Submit">
</form>
</body>
</html>

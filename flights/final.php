<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Record Form</title>
</head>
<body>
<form action="ticket1.php" method="post">
<p>
<label for='F_ID'>Select the flightno Generated to confirm your filghts</label>
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
        <label for="T_ID">Id generated in the payment process step:</label>
        <input type="text" name="T_ID" id="T_ID">
    </p>
     <p>
        <label for="passportno">Passport-Number(For International Flights):</label>
        <input type="text" name="passportno" id="passportno">
    </p>
    <p>
        <label for="dt_travel">Date-of-travel:</label>
        <input type="date" name="dt_travel" id="dt_travel" min="2020-11-04">
    <p>
<br><br>
	<input type="submit" value="View ticket.">
</form>
</body>
</html>

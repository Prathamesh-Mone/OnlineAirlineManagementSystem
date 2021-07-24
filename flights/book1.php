<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "project5");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$citys = mysqli_real_escape_string($link, $_REQUEST['citys']);
$cityd = mysqli_real_escape_string($link, $_REQUEST['cityd']);
$prefairline = mysqli_real_escape_string($link, $_REQUEST['prefairline']);

$sql = "SELECT * FROM flight natural join airline WHERE (A_IDs=(SELECT A_ID FROM airport WHERE loc='$citys') AND A_IDd=(SELECT A_ID FROM airport WHERE loc='$cityd') AND name='$prefairline')";
if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
          echo "<table>";
            echo "<tr>";
                echo "<th>F_ID</th>";
                echo "<th>name</th>";
		echo "<th>time_dept</th>";
                echo "<th>time_arrival</th>";
                echo "<th>duration</th>";
		echo "<th>fare</th>";
            echo "</tr>";
          while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['F_ID'] . "</td>";
                echo "<td>" . $row['name'] . "</td>";
                echo "<td>" . $row['time_dept'] . "</td>";
                echo "<td>" . $row['time_arrival'] . "</td>";
		echo "<td>" . $row['duration'] . "</td>";
		echo "<td>" . $row['fare'] . "</td>";
            echo "</tr>";
        }
          echo "</table>";
        // Close result set
          mysqli_free_result($result);
    }else{
        echo "No flights matching your entries are found.Sorry for the inconvinence caused.";
    }
}else{
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
<a href=../passenger/passenger_personal.html>Proceed towards entering contact details and payment</a>
</p>
<br>
<p>
<a href=../firstpage.html>Go back towards main page</a>
</p>
</body>
</html>





	



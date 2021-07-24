<!DOCTYPE html>
<html>
<body>

<?php
$tickno=rand();
echo "The ticket number generated is: $tickno. <br>";
$seatno=rand(1,250);
echo("Your seat number is: $seatno <br>");
?>
</body>
</html>
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
$T_ID = mysqli_real_escape_string($link, $_REQUEST['T_ID']);
$dt_travel = mysqli_real_escape_string($link, $_REQUEST['dt_travel']);
$sql = "INSERT INTO passenger_ticket (T_ID,P_ID,F_ID,dt_travel,ticketno,seatno) VALUES ('$T_ID',NULL,'$F_ID','$dt_travel','$tickno','$seatno')";
if(mysqli_query($link, $sql)){
    echo "Records added successfully. <br>";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
echo "Date-of-travel: $dt_travel <br>";
$sql2 = "UPDATE passenger_ticket SET P_ID=(SELECT P_ID FROM passenger_payment WHERE T_ID='$T_ID') WHERE T_ID='$T_ID'" ;
if(mysqli_query($link, $sql2)){
    echo "Successfull ticket booking.";
} else{
    echo "ERROR: Could not able to execute $sql2. " . mysqli_error($link);
}
echo "<br>";
echo "Your flight details are:-";
$sql1 = "SELECT * FROM flight natural join airline WHERE F_ID='$F_ID'";
if($result = mysqli_query($link, $sql1)){
    if(mysqli_num_rows($result) > 0){
          echo "<table>";
            echo "<tr>";
                echo "<th>F_ID</th>";
		echo "<th>time_dept</th>";
                echo "<th>time_arrival</th>";
                echo "<th>duration</th>";
		echo "<th>name</th>";
            echo "</tr>";
          while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['F_ID'] . "</td>";
                echo "<td>" . $row['time_dept'] . "</td>";
                echo "<td>" . $row['time_arrival'] . "</td>";
		echo "<td>" . $row['duration'] . "</td>";
		echo "<td>" . $row['name'] . "</td>";
            echo "</tr>";
        }
          echo "</table>";
        // Close result set
          mysqli_free_result($result);
    }else{
        echo "Sorry,Please enter correct ID(PNR status number) or select correct flight number OR Please check if the payment is completed.";
    }
}else{
    echo "ERROR: Could not able to execute $sql1. " . mysqli_error($link);
}
echo "<br>";
echo "Your personal details are:-";
$sql3 = "SELECT * FROM passenger_personal WHERE P_ID=(SELECT P_ID FROM passenger_payment WHERE T_ID='$T_ID')";
if($result1 = mysqli_query($link, $sql3)){
    if(mysqli_num_rows($result1) > 0){
          echo "<table> <br>";
            echo "<tr>";
                echo "<th>name</th>";
		echo "<th>addharno</th>";
		echo "<th>age</th>";
		echo "<th>dob</th>";
                echo "<th>sex</th>";
            echo "</tr>";
          while($row1 = mysqli_fetch_array($result1)){
            echo "<tr>";
                echo "<td>" . $row1['name'] . "</td>";
                echo "<td>" . $row1['addharno'] . "</td>";
                echo "<td>" . $row1['age'] . "</td>";
		echo "<td>" . $row1['dob'] . "</td>";
		echo "<td>" . $row1['sex'] . "</td>";
            echo "</tr>";
        }
          echo "</table>";
        // Close result set
          mysqli_free_result($result1);
    }else{
        echo "Sorry,Please enter correct ID(PNR status number) or select correct flight number OR Please check if the payment is completed.";
    }
}else{
    echo "ERROR: Could not able to execute $sql1. " . mysqli_error($link);
}
echo "<br>";
echo "Your boarding location is:";
$sql4 = "SELECT * FROM airport WHERE A_ID=(SELECT A_IDs from flight WHERE F_ID='$F_ID')";
if($result2 = mysqli_query($link, $sql4)){
    if(mysqli_num_rows($result2) > 0){
          echo "<table> <br>";
            echo "<tr>";
                echo "<th>a_name</th>";
		echo "<th>loc</th>";
		echo "<th>gate_cnt</th>";
		echo "<th>counter_cnt</th>";
            echo "</tr>";
          while($row2 = mysqli_fetch_array($result2)){
            echo "<tr>";
                echo "<td>" . $row2['a_name'] . "</td>";
                echo "<td>" . $row2['loc'] . "</td>";
                echo "<td>" . $row2['gate_cnt'] . "</td>";
		echo "<td>" . $row2['counter_cnt'] . "</td>";
            echo "</tr>";
        }
          echo "</table>";
        // Close result set
          mysqli_free_result($result2);
    }else{
        echo "Sorry,Please enter correct ID(PNR status number) or select correct flight number OR Please check if the payment is completed.";
    }
}else{
    echo "ERROR: Could not able to execute $sql1. " . mysqli_error($link);
}
echo "<br>";
echo "Your landing location is:";
$sql5 = "SELECT * FROM airport WHERE A_ID=(SELECT A_IDd from flight WHERE F_ID='$F_ID')";
if($result3 = mysqli_query($link, $sql5)){
    if(mysqli_num_rows($result3) > 0){
          echo "<table> <br>";
            echo "<tr>";
                echo "<th>a_name</th>";
		echo "<th>loc</th>";
		echo "<th>gate_cnt</th>";
		echo "<th>counter_cnt</th>";
            echo "</tr>";
          while($row3 = mysqli_fetch_array($result3)){
            echo "<tr>";
                echo "<td>" . $row3['a_name'] . "</td>";
                echo "<td>" . $row3['loc'] . "</td>";
                echo "<td>" . $row3['gate_cnt'] . "</td>";
		echo "<td>" . $row3['counter_cnt'] . "</td>";
            echo "</tr>";
        }
          echo "</table>";
        // Close result set
          mysqli_free_result($result3);
    }else{
        echo "Sorry,Please enter correct ID(PNR status number) or select correct flight number OR Please check if the payment is completed.";
    }
}else{
    echo "ERROR: Could not able to execute $sql1. " . mysqli_error($link);
}
// Close connection
mysqli_close($link);
?>
<br><br>
<button onClick="window.print()">Print your ticket</button>
<br><br>
<a href=../firstpage.html>Go page to main page.</a>

 







	



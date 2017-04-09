<!doctype html>
<html>
    <head>
        <title>Overwatch Tournament</title>
        <link rel = "stylesheet" type = "text/css" href = "mystyle.css">
        <script type = "text/javascript" src = "JSFunction.js"></script>
    </head>
    <body id="tour">
          <input type="button" id="back" value="back" Onclick="backToMain()">
          <input type="button" id="tourOp" value="Option" Onclick="tourPopOp()">
        <table>
<?php
    include 'db_connection.php';
    $conn = OpenCon();
    $sql = "SELECT * FROM n";
    $result = $conn->query($sql);
 
    
    if ($result->num_rows > 0) {
     // output data of each row
     /* in n table
     A      B
     5      fff 
     121    HI */
     
    while($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>". $row["A"]. "</td>";
        echo "<td>" . $row["B"]. "</td>";
        echo "</tr>";
    }
    } else {
        echo "0 results";
    }    

    CloseCon($conn);
?>

    </body>
</html>
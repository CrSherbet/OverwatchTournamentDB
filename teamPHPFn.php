<?php
    include 'db_connection.php';
    $conn = OpenCon();
    $haveCon = true;
    if (!isset($_POST['key'])) {
        die("Does not have key");
    }
 
    $key = $_POST['key'];
    if($key == "searchTeamName")
        searchTeamName($_POST['name']);
   
    function searchTeamName($name) {
        $conn = $GLOBALS['conn'];
        $sql = "SELECT * FROM team LEFT JOIN manager ON manager.ManagerID = team.ManagerID WHERE team.TeamName LIKE '%$name%'";
        $result = $conn->query($sql);
        
        if ($result!=null){
            echo "<tr>  <th>Team Name</th> <th>Manager</th> <th>Former</th> <th>Captain Team</th> </tr>";
            while($row = $result->fetch_assoc()){
                echo "<tr>";
                echo "<td>". $row['TeamName']."</td>";
                echo "<td>". $row['MFirstName']."</td>";
                echo "<td>". $row['FormerName']."</td>";
                echo "<td>". $row['CaptainTeamID']."</td>";
                echo "</tr>";
            }
         }
         echo "<br>";
     }  
    CloseCon($conn);
?>
         
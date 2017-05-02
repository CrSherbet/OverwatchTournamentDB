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

           while($row = $result->fetch_assoc()){
                echo '<div class=\'ui card\' >';
                echo '<div class=\'image\'> <img src=\'./images/map/Map012.jpg\'></div>';
                echo '<div class=\'content\'> <div class=\'header\'>'. $row['TeamName'].'</div> <div class=\'meta\'>';
                echo '</div></div></div>';
               
            }
            /*echo "<thead><tr>  <th>Team Name</th> <th>Manager</th> <th>Former</th> <th>Captain Team</th> </tr></thead>";
            echo "<tbody>";
            while($row = $result->fetch_assoc()){
                echo "<tr>";
                echo "<td>". $row['TeamName']."</td>";
                echo "<td>". $row['MFirstName']."</td>";
                echo "<td>". $row['FormerName']."</td>";
                echo "<td>". $row['CaptainTeamID']."</td>";
                echo "</tr>";
            }
            echo "</tbody>";
         }
         echo "<br>";*/
        }
     }  
    CloseCon($conn);
?>
         
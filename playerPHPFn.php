<?php
    include 'db_connection.php';
    $conn = OpenCon();
    $haveCon = true;
    if (!isset($_POST['key'])) {
        die("Does not have key");
    }
 
    $key = $_POST['key'];
    if($key == "searchPlayerName")
        searchPlayerName($_POST['name']);
   
    function searchPlayerName($name) {
        $conn = $GLOBALS['conn'];
        $sql = "SELECT * FROM player LEFT JOIN team ON team.TeamID = player.TeamID WHERE player.BattleTag LIKE '%$name%'";
        $result = $conn->query($sql);
    
        echo $sql;
        if ($result!=null){
            echo "<tr> <th>BattleTag</th> <th>Firstname</th>  <th>Lastname</th> <th>Team</th> <th>Position</th> <th>Main Character</th> </tr>";
            while($row = $result->fetch_assoc()){
                echo "<tr>";
                echo "<td>". $row['BattleTag']."</td>";
                echo "<td>". $row['PFirstName']."</td>";
                echo "<td>". $row['PLastName']."</td>";
                echo "<td>". $row['TeamName']."</td>";
                echo "<td>". $row['Position']."</td>";
                echo "<td>". $row['MainCharName']."</td>";
                echo "</tr>";
            }
         }
         echo "<br>";
     }  
    CloseCon($conn);
?>
         
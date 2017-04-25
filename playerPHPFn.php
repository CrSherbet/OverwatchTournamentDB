<?php
    include 'db_connection.php';
    $conn = OpenCon();
    $haveCon = false;
    if (!isset($_POST['key'])) {
        die("Does not have key");
    }
 
    $key = $_POST['key'];
    if($key == "searchPlayerName")
        searchPlayerName($_POST['name']);
    else if($key == "searchOpPlayer")
        searchOpPlayer($_POST['position'] , $_POST['country']);
    

     function searchOpPlayer($position, $country) {
        $conn = $GLOBALS['conn'];
        $haveCon = $GLOBALS['haveCon'];
        $sql = "SELECT * FROM player LEFT JOIN team ON team.TeamID = player.TeamID
        LEFT JOIN country ON player.Country = country.CountryAbbr " ;
        if($position != 'All'){
            $sql .= " WHERE player.Position = '$position' ";
            $haveCon = true;
        }
        if($haveCon && $country != 'All')
            $sql .= " AND CFullName = '$country' ";
        else if(!$haveCon && $country != 'All')
            $sql .= " WHERE CFullName = '$country' ";
        
        echo $sql;
        $result = $conn->query($sql);
        if ($result!=null){
            returnTable($result);
         }
         echo "<br>";
     }  

    function searchPlayerName($name) {
        $conn = $GLOBALS['conn'];
        $sql = "SELECT * FROM player LEFT JOIN team ON team.TeamID = player.TeamID 
        LEFT JOIN country ON player.Country = country.CountryAbbr WHERE player.BattleTag LIKE '%$name%'";
        $result = $conn->query($sql);
        if ($result!=null)
            returnTable($result);
        echo "<br>";
     }  

     
    function returnTable($result){
        echo "<tr> <th>BattleTag</th> <th>Firstname</th>  <th>Lastname</th> <th>Team</th> <th>Position</th> <th>Main Character</th> <th>Country</th></tr>";
        while($row = $result->fetch_assoc()){
            echo "<tr>";
            echo "<td>". $row['BattleTag']."</td>";
            echo "<td>". $row['PFirstName']."</td>";
            echo "<td>". $row['PLastName']."</td>";
            echo "<td>". $row['TeamName']."</td>";
            echo "<td>". $row['Position']."</td>";
            echo "<td>". $row['MainCharName']."</td>";
            echo "<td>". $row['CFullName']."</td>";
            echo "</tr>";
        }
    }
    
    CloseCon($conn);
?>
         
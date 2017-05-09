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
        searchOpPlayer($_POST['position'] , $_POST['country'] , $_POST['team']);
    else if($key == "remove")
        removePlayer($_POST['id']);
    else if($key == "getList")
        getList($_POST['type']);
    else if($key == "add")
        checkBattleTag($_POST['battleTag']);
    else if($key == "getTeamList")
        getTeamList();
    
    function getTeamList(){
        $conn = $GLOBALS['conn'];
        $sql = "SELECT TeamID, TeamName FROM team";
        $result = $conn->query($sql);
        if ($result!=null){
            echo '<option value="All">All</option>';
             while($row = $result->fetch_assoc()){
                 echo '<option value = "'.$row['TeamID'].'">'.$row['TeamName'].'</option>';
             }
         }
    }

    function checkBattleTag($battleTag){
        $conn = $GLOBALS['conn'];
        $sql = "SELECT BattleTag FROM player";
        $result = $conn->query($sql);
        $canAdd = true;
        if ($result!=null){
            while($row = $result->fetch_assoc()){
                $id = $row['BattleTag'] ;
                if($battleTag == $id){
                    echo '<script>alert("Battle Tag is available now!")</script>'; 
                    $canAdd = false;
                }
            }
            if($_POST['firstn'] == "" || $_POST['lastn'] == ""){
                echo '<script>alert("Please fill out all information!")</script>'; 
                $canAdd =  false;
            }
            if($canAdd){
                  addNewPlayer($_POST['battleTag'],$_POST['firstn'],$_POST['lastn'],
                 $_POST['team'],$_POST['position'], $_POST['main'],$_POST['country']);
            }

         }
    }      

    function getList($type){
        $conn = $GLOBALS['conn'];
        if($type == "team"){
            $sql = "SELECT TeamID, TeamName FROM team";
        } else if ($type == "hero"){
            $sql = "SELECT HeroName, HeroName FROM hero";
        } else if ($type=="country"){
             $sql = "SELECT CountryAbbr, CFullName FROM country";
        }
          $result = $conn->query($sql);

         if ($result!=null){
            while($row = $result->fetch_row()){
                echo '<option value="'.$row[0].'">'.$row[1].'</option>';
            }
         }
    }
    
    function addNewPlayer($battleTag, $firstn, $lastn, $team, $position, $main, $country){
        $conn = $GLOBALS['conn'];
        $sql = "INSERT INTO player VALUES ('$battleTag','$firstn','$lastn','$team','$position','$main','$country')";
        $result = $conn->query($sql);
        searchPlayerName('');
    }

    function removePlayer($battleTag){
        $conn = $GLOBALS['conn'];
        $sql = "DELETE FROM player WHERE player.BattleTag = '$battleTag'";
        $result = $conn->query($sql);
        searchPlayerName('');
    }

     function searchOpPlayer($position, $country, $team) {
        $conn = $GLOBALS['conn'];
        $haveCon = $GLOBALS['haveCon'];
        $sql = "SELECT * FROM player LEFT JOIN team AS t ON t.TeamID = player.TeamID
        LEFT JOIN country ON player.Country = country.CountryAbbr " ;
        if($position != 'All'){
            $sql .= " WHERE player.Position = '$position' ";
            $haveCon = true;
        }
        if($haveCon && $country != 'All')
            $sql .= " AND CFullName = '$country' ";
        else if(!$haveCon && $country != 'All'){
            $sql .= " WHERE CFullName = '$country' ";
            $haveCon = true;
        }
        if($haveCon && $team != 'All')
            $sql .= " AND t.TeamID = '$team' ";
        else if(!$haveCon && $team != 'All')
            $sql .= " WHERE t.TeamID = '$team' ";
   
        $result = $conn->query($sql);
        if ($result!=null){
            returnTable($result);
         }
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
        echo "<thead> <tr> <th>BattleTag</th> <th>Firstname</th>  <th>Lastname</th> <th>Team</th> <th>Position</th> <th>Main Character</th> <th>Country</th> <th>Remove</th></tr> </thead>";
        echo "<tbody>";
        while($row = $result->fetch_assoc()){
            echo "<tr>";
            echo "<td>". $row['BattleTag']."</td>";
            echo "<td>". $row['PFirstName']."</td>";
            echo "<td>". $row['PLastName']."</td>";
            echo "<td>". $row['TeamName']."</td>";
            echo "<td>". $row['Position']."</td>";
            echo "<td>". $row['MainCharName']."</td>";
            echo "<td>". $row['CFullName']."</td>Where is my bin";
            echo "<td><div> <label for='delete'><div class='wrapper'>
             <div class='lid'></div><div class='can' Onclick = removePlayer('". $row['BattleTag']."')></div></div> </label> </div></td>";
            echo "</tr>";
        }
        echo "</tbody>";
    }
    
    CloseCon($conn);
?>
      
      
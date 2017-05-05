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
    else if($key == "searchOpTeam")
        searchOpTeam($_POST['country']);

    function returnCard($result){
         while($row = $result->fetch_assoc()){
                echo '<div class=\'ui card\' >';
                echo '<div class=\'image\'> <img src=\'./images/team/'.$row['TeamName'].'.png\'></div>';
                echo '<div class=\'content\'> <div class=\'header\'>'. $row['TeamName'].'</div> <div class=\'meta\'>';
                echo '<a>'.$row['CFullName'].'</a>';
                echo '</div></div></div>';
               
        }
    }

    function searchOpTeam($country){
         $conn = $GLOBALS['conn'];
        $sql = "SELECT * FROM team LEFT JOIN country ON country.countryAbbr = team.Country WHERE CFullName = '$country'";
        $result = $conn->query($sql);
        
        if ($result!=null){
            returnCard($result);
        }

    }
   
    function searchTeamName($name) {
        $conn = $GLOBALS['conn'];
        $sql = "SELECT * FROM team LEFT JOIN country ON country.countryAbbr = team.Country WHERE team.TeamName LIKE '%$name%'";
        $result = $conn->query($sql);
        
        if ($result!=null){
            returnCard($result);

        }
     }  
    CloseCon($conn);
?>
         
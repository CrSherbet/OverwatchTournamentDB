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
    else if($key == "showPopUp")
        showPopUp($_POST['id']);

    function returnCard($result){
         while($row = $result->fetch_assoc()){
                echo '<div class=\'ui card\' id=\''.$row['TeamID'].'\' onClick="setUp(\'team\',\''.$row['TeamID'].'\')">';
                echo '<a class=\'image\'href=\'#popup1\'>';
                echo '<img src=\'./images/team/'.$row['TeamName'].'.png\'>';
                echo '</a>';
                echo '<div class=\'content\'> <div class=\'header\'>'.$row['TeamName'].'</div> <div class=\'meta\'>';
                echo '<a>'.$row['CFullName'].'</a>';
                echo '</div></div></div>';
        }
    }

    function showPopUp($id){
        $conn = $GLOBALS['conn'];
        $sql = "SELECT * FROM team LEFT JOIN manager ON team.ManagerID = manager.ManagerID WHERE team.TeamID = '$id'";
        $result = $conn->query($sql);
         if ($result!=null){
              while($row = $result->fetch_assoc()){
                echo '<div class="popup">
                        <div class="row">
                        <a class="close" href="#">&times;</a>
                            <div class="col-lg-6 col-sm-6 col-md-6">
                                    <img class="img-responsive" src=\'./images/team/'.$row['TeamName'].'.png\'>
                            </div>
                                    <div class="col-lg-5 col-sm-5 col-md-5">
                                        <h2>'.$row['TeamName'].'</h2>  
                                        <div class="content">
                                            <font color="black">Manager: </font>'.$row['MFirstName'].' '.$row['MLastName'].'
                                            <font color="black">Former: </font>'.$row['FormerName'].' 
                                            <font color="black">Captain Team: </font>'.$row['CaptainTeamID'].'
                                            <font color="black">Member: </font><br>
                                        </div>
                                </div>
                            </div>
                        </div>';
              }
        }

        $sql = "SELECT * FROM team RIGHT JOIN player ON team.TeamID = player.TeamID WHERE team.TeamID = '$id'";
        $result = $conn->query($sql);
        if ($result!=null){
              while($row = $result->fetch_assoc()){
                echo ''.$row['BattleTag'].'<br>';
              }
              echo '</div></div>';
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
         
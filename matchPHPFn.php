<?php
    include 'db_connection.php';
    $conn = OpenCon();
   
    if (!isset($_POST['key'])) {
        die("Does not have key");
    }
 
    $key = $_POST['key'];
    if($key == "showInfo")
        showInfo($_POST['id']);
    else if($key == "showResult")
        showResult($_POST['id']);
 
    function showInfo($id){
        $conn = $GLOBALS['conn'];
        $sql = "SELECT * FROM tournament LEFT JOIN organizer ON tournament.OrganizerID = organizer.OrgID 
         LEFT JOIN country ON  tournament.Location = country.CountryAbbr  WHERE tournament.TourID = '$id' ";
        $result = $conn->query($sql);
        if ($result!=null){
             while($row = $result->fetch_assoc()){
                echo '<h2>'.$row['TourName'].'<h3>Tier: '.$row['Tier'].'<br>Organizer: '.$row['OrgName'].'<br> Location:'.$row['CFullName'].' <br>
                Start Date:'.$row['StartDate'].'&nbsp;&nbsp;&nbsp; End Date: '.$row['EndDate'].'</h3>';
             }
        }
    }

    function showResult($id) {
        $conn = $GLOBALS['conn'];
        $sql = "SELECT MatchID, WinnerTeamID, LoserTeamID, winner.TeamName as WinnerName, loser.TeamName as LoserName 
        FROM matching left join team  as winner on matching.WinnerTeamID = winner.TeamID    
        left join team as loser on matching.LoserTeamID = loser.TeamID where matching.TourID = '$id' ";
        $result = $conn->query($sql);
        $count = 0;
        if ($result!=null){
             echo '<ul class="bracket bracket-3">';
             while($row = $result->fetch_assoc()){ 
                 $sql2 = 'SELECT * FROM 
                    (SELECT COUNT(*) Win FROM competition WHERE competition.MatchID = "'.$row['MatchID'].'" AND 
                    competition.WinnerTeamID = "'.$row['WinnerTeamID'].'") As CountWin,
                    (SELECT COUNT(*) Lose FROM competition WHERE competition.MatchID = "'.$row['MatchID'].'" AND 
                    competition.LoserTeamID = "'.$row['WinnerTeamID'].'") As CountLose';
                    $result2 = $conn->query($sql2);
                    $row2 = $result2->fetch_assoc();
              
                if($count==0 || $count==1)
                    echo '<li class="team-item"><font color="#FFBF00">'.$row['WinnerName'].'</font>  <time>'.$row2['Win'].' : 
                    '.$row2['Lose'].'</time>  '.$row['LoserName'].'</li>';
                else if ($count==2) {
                    echo '</ul><ul class="bracket bracket-4"> <li class="team-item"><font color="#FFBF00">'.$row['WinnerName'].'
                    </font>  <time>'.$row2['Win'].' : '.$row2['Lose'].'</time>  '.$row['LoserName'].'</li></ul>';
                    echo '<ul class="bracket bracket-5"> <li class="team-item"><font color="#FFBF00">
                      <img src=\'./images/team/'.$row['WinnerName'].'.png\'><br>'.$row['WinnerName'].'</font> </li></ul>';
                }
                $count++;
             }
         }
         echo "<br>";
     }  
    
    CloseCon($conn);
?>
         
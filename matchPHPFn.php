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
        $sql = 'SELECT * FROM tournament LEFT JOIN organizer ON tournament.OrganizerID = organizer.OrgID 
         LEFT JOIN country ON  tournament.Location = country.CountryAbbr  WHERE tournament.TourID = "'.$id.'"';
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
        $sql = 'SELECT * FROM match';
        $result = $conn->query($sql);

        if ($result!=null){
            while($row = $result->fetch_assoc()){
                echo '<ul class="bracket bracket-3"> <li class="team-item">kd;l<time></time> SF2</li>
      <li class="team-item"><time>20:00</time> SF4</li>
    </ul>  
    <ul class="bracket bracket-4">
      <li class="team-item">F1 <time>20:00</time> F2</li>
    </ul>  

    <ul class="bracket bracket-5">
      <li class="team-item">European Champions</li>
    </ul>  ';
               
            }
         }
         echo "<br>";
     }  
    
    CloseCon($conn);
?>
         
<?php
    include 'db_connection.php';
    $conn = OpenCon();
   
    if (!isset($_POST['key'])) {
        die("Does not have key");
    }
 
    $key = $_POST['key'];
    showMapType($key);
 
    function showMapType($key) {
        $conn = $GLOBALS['conn'];
        if($key=='All')
            $sql = 'SELECT * FROM map INNER JOIN country ON map.Location = country.CountryAbbr';
        else
            $sql = 'SELECT * FROM map INNER JOIN country ON map.Location = country.CountryAbbr WHERE map.Type = \''.$key.'\'';
        $sql .= ' ORDER BY map.Type' ;
        $result = $conn->query($sql);
        if ($result!=null){

            while($row = $result->fetch_assoc()){
                echo '<div class=\'ui card\' >';
                echo '<div class=\'image\'> <img src=\'./images/map/'. $row['MapID'].'.jpg\'></div>';
                echo '<div class=\'content\'> <div class=\'header\'>'. $row['MapName'].'</div> <div class=\'meta\'>';
                echo '<a>'.$row['Type'].'</a><br> <a>'.$row['Terrain'].' in '.$row['CFullName'].'</a> </div></div>';
                echo '</div>';
               
            }
         }
         echo "<br>";
     }  
    
    CloseCon($conn);
?>
         
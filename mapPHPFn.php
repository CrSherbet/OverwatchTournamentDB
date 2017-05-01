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
        echo $sql ;
        $result = $conn->query($sql);
        if ($result!=null){

            while($row = $result->fetch_assoc()){
                echo '<div class=\'ui card\' >';
                echo '<div class=\'image\'> <img src=\'./images/map/'. $row['MapName'].'.jpg\'></div>';
                echo '<div class=\'content\'> <div class=\'header\'>'. $row['MapName'].'</div> <div class=\'meta\'>';
                echo '<a>'.$row['Type'].'</a><br> <a>'.$row['Terrain'].' in '.$row['CFullName'].'</a> </div></div>';
                echo '</div>';
               
            }/*
            echo "<tr>  <th>Map Name</th> <th>Location</th> <th>Type</th><th>Terrain</th> </tr>";
            while($row = $result->fetch_assoc()){
                echo "<tr>";
                echo "<td>". $row['MapName']."</td>";
                echo "<td>". $row['Location']."</td>";
                echo "<td>". $row['Type']."</td>";
                echo "<td>". $row['Terrain']."</td>";
                echo "</tr>";
            }*/
         }
         echo "<br>";
     }  
    
    CloseCon($conn);
?>
         
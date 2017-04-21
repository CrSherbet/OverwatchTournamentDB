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
            $sql = 'SELECT * FROM map';
        else
            $sql = 'SELECT * FROM map WHERE map.Type = \''.$key.'\'';
        $sql .= ' ORDER BY map.Type' ;
        echo $sql ;
        $result = $conn->query($sql);
        if ($result!=null){
            echo "<tr>  <th>Map Name</th> <th>Location</th> <th>Type</th><th>Terrain</th> </tr>";
            while($row = $result->fetch_assoc()){
                echo "<tr>";
                echo "<td>". $row['MapName']."</td>";
                echo "<td>". $row['Location']."</td>";
                echo "<td>". $row['Type']."</td>";
                echo "<td>". $row['Terrain']."</td>";
                echo "</tr>";
            }
         }
         echo "<br>";
     }  
    
    CloseCon($conn);
?>
         
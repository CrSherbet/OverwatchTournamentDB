<?php
    include 'db_connection.php';
    $conn = OpenCon();
   
    if (!isset($_POST['key'])) {
        die("Does not have key");
    }
 
    $key = $_POST['key'];
    showHeroRole($key);
 
    function showHeroRole($key) {
        $conn = $GLOBALS['conn'];
        if($key == 'All')
            $sql = 'SELECT * FROM hero';
        else
            $sql = 'SELECT * FROM hero WHERE hero.Role = \''.$key.'\'';
        $sql .= ' ORDER BY hero.Role' ;
        echo $sql ;
        $result = $conn->query($sql);
        if ($result!=null){
            echo "<tr><th>Hero Name</th> <th>Damage</th> <th>Healing</th> <th>Blood</th> <th>Speed</th> <td>Rank</tr> <th>Role</th>";
            while($row = $result->fetch_assoc()){
                echo "<tr>";
                echo "<td>". $row['HeroName']."</td>";
                echo "<td>". $row['Damage']."</td>";
                echo "<td>". $row['Heal']."</td>";
                echo "<td>". $row['Blood']."</td>";
                echo "<td>". $row['Speed']."</td>";
                echo "<td>". $row['PopRank']."</td>";
                echo "<td>". $row['Role']."</td>";
                echo "</tr>";
            }
         }
         echo "<br>";
     }  
    
    CloseCon($conn);
?>
         
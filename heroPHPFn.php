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
        $result = $conn->query($sql);
        if ($result!=null){
           while($row = $result->fetch_assoc()){
                echo '<div class=\'ui card\' >';
                echo '<div class=\'image\'> <img src=\'./images/hero/'. $row['HeroName'].'.jpg\'></div>';
                echo '<div class=\'content\'> <div class=\'header\'>'. $row['HeroName'].'</div> <div class=\'meta\'>';
                echo '<a>'.$row['Role'].'</a> </div></div>';
                echo '</div>';
               
            }
         }
        
     }  
    
    CloseCon($conn);
?>
         
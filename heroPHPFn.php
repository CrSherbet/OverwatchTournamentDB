<?php
    include 'db_connection.php';
    $conn = OpenCon();
   
    if (!isset($_POST['key'])) {
        die("Does not have key");
    } 
 
    $key = $_POST['key'];
    if($key == "showHero")
        showHeroRole($_POST['role']);
    else if($key == "showPopUp")
        showPopUp($_POST['id']);
  
    function showPopUp($hero){
        $conn = $GLOBALS['conn'];
        $sql = "SELECT * FROM hero WHERE hero.HeroName = '$hero'";
        $result = $conn->query($sql);
         if ($result!=null){
              while($row = $result->fetch_assoc()){
                echo '<div class="popup"><img src=\'./images/hero/'.$row['HeroName'].'.jpg\'><br><br><h2>'.$row['HeroName'].'</h2>
                <a class="close" href="#">&times;</a>
                <div class="content">
                <font color="black">HP: </font>'.$row['Blood'].' 
                    <font color="black">Damage: </font>'.$row['Damage'].' 
                   <font color="black">Heal: </font>'.$row['Heal'].' <br>
                    <font color="black">Speed: </font>'.$row['Speed'];
                     echo '</div>';
              }
        }                
    }
    function showHeroRole($role) {
        $conn = $GLOBALS['conn'];
        if($role == 'All')
            $sql = 'SELECT * FROM hero';
        else
            $sql = 'SELECT * FROM hero WHERE hero.Role = \''.$role.'\'';
        $sql .= ' ORDER BY hero.Role' ;
        $result = $conn->query($sql);
        if ($result!=null){
           while($row = $result->fetch_assoc()){
                echo '<div class=\'ui card\' id=\''.$row['HeroName'].'\' onClick="setUp(\'hero\', \''.$row['HeroName'].'\')" >';
                echo '<div class=\'image\'> <img src=\'./images/hero/'. $row['HeroName'].'.jpg\'></div>';
                echo '<div class=\'content\'> <div class=\'header\'>'. $row['HeroName'].'</div> <div class=\'meta\'>';
                echo '<a>'.$row['Role'].'</a> </div></div>';
                echo '</div>';
            }
         }
        
     }  
    
    CloseCon($conn);
?>
         
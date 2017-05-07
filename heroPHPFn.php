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
        $sql = "SELECT * FROM hero INNER JOIN country ON hero.Country = country.CountryAbbr WHERE hero.HeroName = '$hero'";
        $result = $conn->query($sql);
         if ($result!=null){
              while($row = $result->fetch_assoc()){
                 echo '<div class="popup">
                        <div class="row">
                        <a class="close" href="#'.$row['HeroName'].'">&times;</a>
                            <div class="col-sm-7 col-md-7 col-lg-7 ">
                                    <img class="img-responsive" src=\'./images/hero/'.$row['HeroName'].'.jpg\'>
                            </div>
                                    <div class="sm-4 col-md-4 col-md-4">
                                        <h2>'.$row['HeroName'].'</h2>  
                                        <div class="content">
                                            <font color="black">Name: </font>'.$row['HeroRealName'].' <br>
                                            <font color="black">Role: </font>'.$row['Role'].' <br>
                                            <font color="black">Country: </font>'.$row['CFullName'].' <br>
                                             <font color="black">HP: </font>'.$row['Blood'].' <br>
                                            <font color="black">Damage: </font>'.$row['Damage'].' <br>
                                            <font color="black">Healing: </font>'.$row['Heal'].' <br>
                                            <font color="black">Speed: </font>'.$row['Speed'].'<br>
                                            <font color="black">Popular Rank: </font>'.$row['PopRank'];
                                            ;
                                        
                    echo ' </div></div></div></div>';
              }
        }                
    }
    function showHeroRole($role) {
        $conn = $GLOBALS['conn'];
        if($role == 'All')
            $sql = 'SELECT HeroName, Role FROM hero';
        else
            $sql = 'SELECT HeroName, Role FROM hero WHERE hero.Role = \''.$role.'\'';
        $sql .= ' ORDER BY hero.Role' ;
        $result = $conn->query($sql);
        if ($result!=null){
           while($row = $result->fetch_assoc()){
                echo '<div class=\'ui card\' id=\''.$row['HeroName'].'\' onClick="setUp(\'hero\', \''.$row['HeroName'].'\')" >';
                echo '<a class=\'image\'href=\'#popup1\'>';
                echo '<img src=\'./images/hero/'. $row['HeroName'].'.jpg\'>';
                echo '</a>';
                echo '<div class=\'content\'> <div class=\'header\'>'. $row['HeroName'].'</div> <div class=\'meta\'>';
                echo '<a>'.$row['Role'].'</a> ';
                echo '</div></div></div>';
            }
         }
        
     }  
    
    CloseCon($conn);
?>
         
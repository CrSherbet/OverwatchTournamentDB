<?php
    include 'db_connection.php';
    $conn = OpenCon();
    $haveCon = true;
    if (!isset($_POST['key'])) {
        die("Does not have key");
    }
 
    $key = $_POST['key'];
    if($key == "searchTourName"){
        searchTourName($_POST['name']);
    } else if($key == "searchOpTour"){
        searchOpTour($_POST['tierState'],$_POST['price']);
    } else if($key == "getCountryList"){
        getCountryList($_POST['name']);
    }
 
    function searchTourName($name) {
        $conn = $GLOBALS['conn'];
        $sql = "SELECT TourName,Price,Tier FROM tournament WHERE tournament.TourName LIKE '%$name%'";
        $result = $conn->query($sql);
        echo $sql ;
        if ($result!=null){
            echo "<tr>  <th>Tournament Name</th> <th>Price</th> <th>Tier</th> </tr>";
            while($row = $result->fetch_assoc()){
                echo "<tr>";
                echo "<td>". $row['TourName']."</td>";
                echo "<td>". $row['Price']."</td>";
                echo "<td>". $row['Tier']."</td>";
                echo "</tr>";
            }
         }
         echo "<br>";
     }  
      
    function searchOpTour($tierState, $price) {
        $conn = $GLOBALS['conn'];
        $haveCon = $GLOBALS['haveCon'];
        $haveCon = true;
        if($tierState == 1)
             $sql = "SELECT * FROM tournament WHERE tournament.Tier = 'Premier'";
        else if($tierState == 2)
             $sql = "SELECT * FROM tournament WHERE tournament.Tier = 'Major'";
        else if($tierState == 3)
             $sql = "SELECT * FROM tournament WHERE (tournament.Tier = 'Premier' OR tournament.Tier = 'Major')";
        else if($tierState == 4)
             $sql = "SELECT * FROM tournament WHERE tournament.Tier = 'Minor'";
        else if($tierState == 5)
             $sql = "SELECT * FROM tournament WHERE (tournament.Tier = 'Premier' OR tournament.Tier = 'Minor')";
        else if($tierState == 6)
            $sql = "SELECT * FROM tournament WHERE (tournament.Tier = 'Major' OR tournament.Tier = 'Minor')";
        else {
             $sql = "SELECT * FROM tournament";
             $haveCon = false;
        }
 
        $deltaPrice = $price - 50000;
         
        if($price != -1){
            if($haveCon)
                $sql .= " AND ";
            else
                $sql .= " WHERE ";
            if($price == -2 )
                $sql .= " tournament.Price > 300000";
            else
                $sql .= " (tournament.Price <= " .$price. " AND tournament.Price > " .$deltaPrice.")" ;
        }
        echo $sql;
         
        $result = $conn->query($sql);
        if ($result!=null){
            echo "<tr>  <th>Tournament Name</th> <th>Price</th> <th>Tier</th> </tr>";
            while($row = $result->fetch_assoc()){
                echo "<tr>";
                echo "<td>". $row['TourName']."</td>";
                echo "<td>". $row['Price']."</td>";
                echo "<td>". $row['Tier']."</td>";
                echo "</tr>";
           }
        }
        else echo "   No Information!!!   ";
    }
    CloseCon($conn);
?>
         
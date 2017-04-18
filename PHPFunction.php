<?php
    include 'db_connection.php';
    $conn = OpenCon();

    if (!isset($_POST['key'])) {
        die("Does not have key");
    }

    $key = $_POST['key'];
    if($key == "searchTourName"){
        searchTourName($_POST['name']);
    } else if($key == "searchOpTour"){
        searchOpTour($_POST['tireState'],$_POST['price']);
    } else if($key == "getCountryList"){
        getCountryList($_POST['name']);
    }

    function getSomeList($nameOfList){
        $conn = $GLOBALS['conn'];
        $sql = "SELECT * FROM $nameOfList";
        $result = $conn->query($sql);
        $res = array();
        if ($result!=null)
            for ($res = array (); $row = $result->fetch_assoc(); $res[] = $row);
        echo json_encode($res);
    }

    function searchTourName($name) {
        $conn = $GLOBALS['conn'];
        $sql = "SELECT * FROM tournament WHERE tournament.TourName like '%$name%'";
        $result = $conn->query($sql);
        $res = array();
        if ($result!=null)
            for ($res = array (); $row = $result->fetch_assoc(); $res[] = $row);
        echo json_encode($res);
    }  

    function searchOpTour($tierState, $price) {
        $conn = $GLOBALS['conn'];
        if($tierState == 1)
            $sql = "SELECT * FROM tournament WHERE tournament.Tier = 'Premier'";
       /else if($tierState == 2)
            $sql = "SELECT * FROM tournament WHERE tournament.Tier = 'Major'";
        else if($tierState == 3)
            $sql = "SELECT * FROM tournament WHERE tournament.Tier = 'Premier' OR tournament.Tier = 'Major'";
        else if($tierState == 4)
            $sql = "SELECT * FROM tournament WHERE tournament.Tier = 'Minor'";
        else if($tierState == 5)
            $sql = "SELECT * FROM tournament WHERE tournament.Tier = 'Premier' OR tournament.Tier = 'Minor'";
        else if($tierState == 6)
            $sql = "SELECT * FROM tournament WHERE tournament.Tier = 'Major' OR tournament.Tier = 'Minor'";
        else 
            $sql = "SELECT * FROM tournament";

      /*  if($price == 0)
            $sql .= "AND tournament.Price <= 50000 ";



        0">50000</option>
              <option value="50000">50,000~100,000</option>
              <option value="100000">100,000~150,000</option>
              <option value="150000">150,000~200,000</option>
              <option value="200000">200,000~250,000</option>
              <option value="250000">250,000~300,000</option>
              <option value="300000">>300,000</option>*/
        $result = $conn->query($sql);
        if ($result!=null)
            for ($res = array (); $row = $result->fetch_assoc(); $res[] = $row);
        echo json_encode($res);
    }
    CloseCon($conn);
?>
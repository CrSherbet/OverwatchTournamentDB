<?php
    include 'db_connection.php';
    $conn = OpenCon();

    if (!isset($_POST['key'])) {
        die("Does not have key");
    }

    $key = $_POST['key'];
    if($key == "searchTourName"){
        searchTourName($_POST['name']);
    }

    function searchTourName($name) {
        $conn = $GLOBALS['conn'];
        $sql = "SELECT * FROM n WHERE n.A = $name";
        $result = $conn->query($sql);
        $res = array();
        if ($result!=null)
            for ($res = array (); $row = $result->fetch_assoc(); $res[] = $row);
        echo json_encode($res);
    }  

    function searchName($name) {
    }
    CloseCon($conn);
?>
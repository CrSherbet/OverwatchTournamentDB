<?php
    include 'db_connection.php';
        $conn = OpenCon();
        echo "Connect";
        CloseCon($conn);
   
?>
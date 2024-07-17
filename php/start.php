<?php
session_start();
    if(isset($_SESSION["id"])) {
     $id = $_SESSION["id1"];
        echo $id;
    }
    else{
        
        header("Location: http://localhost/guvi/index.html");
    }
?>
<?php
session_start();
unset($_SESSION['id']);
unset($_SESSION['id1']);
session_destroy();
header('location:http://localhost/guvi/index.html');
?>
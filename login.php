<?php
require_once("config.php");

$email = $_POST["email"];
$pass = $_POST["password"];
$password = base64_encode($pass);

$sql = $conn->prepare("SELECT * from User WHERE email = ? AND password = ?");
$sql->bind_param("ss", $email, $password);
$sql->execute();
$result = $sql->get_result();
$count = $result->num_rows;

         
if($count == 1){
    while($row = $result->fetch_assoc()) {
  $id[] = $row['id'];
}

session_start();
        $_SESSION["id"] = $email;
        $_SESSION["id1"] = $id[0];
        
} 
else {
echo "2"; // wrong details
}

?>



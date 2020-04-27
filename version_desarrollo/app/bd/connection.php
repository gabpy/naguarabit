//bd/connection.php
<?php
//get connection
$conn = new mysqli("localhost", "venebit", "venebit", "venebit");
//handle utf-8 encoding
$conn->set_charset("utf8");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

print("Connection database status: OK");
?>
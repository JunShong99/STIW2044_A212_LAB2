<?php
if (!isset($_POST)) {
    $response = array('status' => 'failed', 'data' => null);
    sendJsonResponse($response);
    die();
}
include_once("dbconnect.php");
$email = addslashes($_POST['email']);
$name = addslashes($_POST['name']);
$number = $_POST['number'];
$password = sha1($_POST['password']);
$address = $_POST['address'];
$base64image = $_POST['image'];
$sqlinsert = "INSERT INTO `tbl_infor`(`user_email`, `user_name`, `user_number`, `user_password`, `user_address`) 
VALUES ('$email','$name','$number','$password','$address')";

if ($conn->query($sqlinsert) === TRUE) {
    $response = array('status' => 'success', 'data' => null);
    $filename = mysqli_insert_id($conn);
    $decoded_string = base64_decode($base64image);
    $path = '../assets/products/' . $filename . '.jpg';
    $is_written = file_put_contents($path, $decoded_string);
    sendJsonResponse($response);
} else {
    $response = array('status' => 'failed', 'data' => null);
    sendJsonResponse($response);
}

function sendJsonResponse($sentArray)
{
    header('Content-Type: application/json');
    echo json_encode($sentArray);
}
?>
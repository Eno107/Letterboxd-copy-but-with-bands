<?php

include('db_connect.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    session_start();

    $user_id = $_POST['user_id'];
    $album_id = $_POST['album_id'];

    $sql = "INSERT INTO soundlist (user_id, album_id) VALUES ($user_id, $album_id)";
    $result = mysqli_query($conn, $sql);

    
}

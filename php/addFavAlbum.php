<?php

include('db_connect.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    session_start();
    
    $user_id = $_SESSION['id'];
    $album_id = $_POST['album_id'];
    $containerIndex = $_POST['containerIndex'];

    $sql = "SELECT * FROM userfavalbum WHERE user_id = $user_id AND fav_order = $containerIndex";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        $sql = "UPDATE userfavalbum SET album_id = $album_id WHERE user_id = $user_id AND fav_order = $containerIndex";
        mysqli_query($conn,$sql);
    } else {
        $sql = "INSERT INTO userfavalbum (user_id, album_id, fav_order) VALUES ($user_id, $album_id, $containerIndex)";
        mysqli_query($conn, $sql);
    }
}

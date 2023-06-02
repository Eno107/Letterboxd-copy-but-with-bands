
<?php

include('db_connect.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    session_start();
    $user_id = $_SESSION['id'];
    $album_id = $_POST['album_id'];
    $rating = $_POST['rating'];

     $sql = "SELECT * FROM soundlist WHERE user_id = $user_id AND album_id = $album_id";
        $result = mysqli_query($conn,$sql);
    if (!$result) {
        error_log(mysqli_error($conn));
    }
        
        if (mysqli_num_rows($result) > 0){
            $sql = "DELETE FROM soundlist WHERE user_id = $user_id AND album_id = $album_id";
            mysqli_query($conn,$sql);
        }

    $sql = "SELECT * FROM log WHERE user_id = $user_id AND album_id = $album_id";
    $result = mysqli_query($conn, $sql);
    if (!$result) {
        error_log(mysqli_error($conn));
    }

    if (mysqli_num_rows($result) > 0) {
        $sql = "UPDATE log SET rating = $rating, time_created = NOW() WHERE user_id = $user_id AND album_id = $album_id";
        mysqli_query($conn, $sql);
        if (!$result) {
            error_log(mysqli_error($conn));
        }
    } else {
        $sql = "INSERT INTO log (user_id, album_id, rating, time_created) VALUES ($user_id, $album_id, $rating, NOW())";
        mysqli_query($conn, $sql);
        if (!$result) {
            error_log(mysqli_error($conn));
        }
    }
}

<?php

include('db_connect.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    session_start();

    $user_id1 = $_SESSION['id'];
    $user_id2 = $_POST['user_id2'];

    $sql = "INSERT INTO friendship (user_id1, user_id2) VALUES ($user_id1, $user_id2)";
    mysqli_query($conn, $sql);
}

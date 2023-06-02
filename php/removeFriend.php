<?php

include('db_connect.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    session_start();

    $user_id1 = $_SESSION['id'];
    $user_id2 = $_POST['user_id2'];

    $sql = "DELETE FROM friendship WHERE (user_id1 = $user_id1 AND user_id2 = $user_id2) OR (user_id1 = $user_id2 AND user_id2 = $user_id1)";
    $result = mysqli_query($conn, $sql);
}

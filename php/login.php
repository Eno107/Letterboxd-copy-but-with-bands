<?php

include('db_connect.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    session_start();

    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    $stmt = mysqli_prepare($conn, "SELECT * FROM user WHERE username = ?");

    if ($stmt) {

        mysqli_stmt_bind_param($stmt, "s", $username);


        if (mysqli_stmt_execute($stmt)) {

            $result = mysqli_stmt_get_result($stmt);

            if (mysqli_num_rows($result) > 0) {

                $user = mysqli_fetch_assoc($result);
                $user_id = $user['id'];

                $_SESSION['id'] = $user_id;
            }
            
            mysqli_stmt_close($stmt);
        }
    }
}

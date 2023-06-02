<?php

include('db_connect.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

  session_start();
 
  $email = mysqli_real_escape_string($conn, $_POST['email']);
  $username = mysqli_real_escape_string($conn, $_POST['username']);
  $password = mysqli_real_escape_string($conn, $_POST['password']);


    $stmt = mysqli_prepare($conn, "INSERT INTO user (email, username, password) VALUES (?, ?, ?)");

    if ($stmt) {
        mysqli_stmt_bind_param($stmt, "sss", $email, $username, $password);

        if (mysqli_stmt_execute($stmt)) {
            $user_id = mysqli_insert_id($conn);  
            $_SESSION['id'] = $user_id;

        } else {
            echo "Error: " . mysqli_stmt_error($stmt);
        }

        mysqli_stmt_close($stmt);
    } else {
        echo "Error: " . mysqli_error($conn);
    }
   

}



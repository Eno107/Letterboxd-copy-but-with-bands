<?php

include('db_connect.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    session_start();
    $user_id = $_SESSION['id'];

    $email = isset($_POST['email']) ? mysqli_real_escape_string($conn, $_POST['email']) : null;
    $username = isset($_POST['username']) ? mysqli_real_escape_string($conn, $_POST['username']) : null;
    $password = isset($_POST['password']) ? mysqli_real_escape_string($conn, $_POST['password']) : null;
    $fileName = isset($_POST['fileName']) ? mysqli_real_escape_string($conn, $_POST['fileName']) : null;


    $changeEmail = isset($_POST['changeEmail']) ? mysqli_real_escape_string($conn, $_POST['changeEmail']) : null;
    $changeUser = isset($_POST['changeUser']) ? mysqli_real_escape_string($conn, $_POST['changeUser']) : null;
    $changePassword = isset($_POST['changePass']) ? mysqli_real_escape_string($conn, $_POST['changePass']) : null;
    $changeProf = isset($_POST['changeProf']) ? mysqli_real_escape_string($conn, $_POST['changeProf']) : null;
    

    if ($changeEmail === 'true'){
        $sql = "UPDATE user
                SET email = '$email'
                WHERE id = $user_id;";
        mysqli_query($conn, $sql);
    }

    if ($changeUser === 'true') {
        $sql = "UPDATE user
                SET username = '$username'
                WHERE id = $user_id;";
        mysqli_query($conn, $sql);
    }

    if ($changePassword === 'true') {
        $sql = "UPDATE user
                SET password = '$password'
                WHERE id = $user_id;";
        mysqli_query($conn, $sql);
    }

    if ($changeProf === 'true') {
        $prof_pic = './projectimgs/' . $fileName;
        $sql = "UPDATE user
            SET prof_pic = '$prof_pic'
            WHERE id = $user_id;";
        mysqli_query($conn, $sql);
    }
}

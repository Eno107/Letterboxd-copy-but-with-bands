<?php

include("php/db_connect.php");
session_start();

if (isset($_SESSION['id'])) {
    $isUser = true;
    $test = $_SESSION['id'];
    $sql = "SELECT * FROM user WHERE id=$test";
    $result = mysqli_query($conn, $sql);
    $user = mysqli_fetch_assoc($result);
} else {
    $isUser = false;
}

$sql = "SELECT * FROM user";
$result = mysqli_query($conn, $sql);
$users = mysqli_fetch_all($result);

?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image" href="./projectimgs/favicon-32x32.png">
    <link rel="stylesheet" href="members.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Proxima+Nova&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>Orpheus</title>
</head>

<body>

    <?php
    if ($isUser)
        include("header.php");
    else
        include("noUserHeader.php");
    ?>

    <div class="body-container">

        <div class="main-divison">

            <?php
            for ($i = 0; $i < count($users); $i++) {
                $member = $users[$i];

                if (isset($_SESSION['id'])) {
                    if ($user['id'] == $member[0])
                        continue;
                }

                $sql = "SELECT COUNT(*) AS album_count FROM log WHERE user_id = $member[0]";
                $result = mysqli_query($conn, $sql);
                $row = mysqli_fetch_assoc($result);
                $logged_number = $row['album_count'];

            ?>
                <div class="main-container">

                    <div class="inside-container">

                        <div class="members-left-contaier">
                            <img src="<?php echo ($member[4]) ?>" alt="">
                            <a href="profile.php?id=<?php echo($member[0])?>"><?php echo ($member[1]) ?></a>
                        </div>

                        <div class="members-right-container">
                            <div>
                                <span><?php echo $logged_number ?></span>
                                <button><i class="fa fa-headphones"></i></button>
                            </div>

                            <?php if (isset($_SESSION['id'])) {

                                $user_id1 = $_SESSION['id'];
                                $user_id2 = $member[0];

                                $sql = "SELECT * FROM friendship WHERE (user_id1 = $user_id1 AND user_id2 = $user_id2) OR (user_id1 = $user_id2 AND user_id2 = $user_id1)";
                                $result = mysqli_query($conn, $sql);

                                if (mysqli_num_rows($result) > 0) {
                            ?>
                                    <button class="member-delete-friend" data-id="<?php echo $member[0] ?>" style="color: rgba(175, 12, 12, 0.629);"><i class="fa fa-minus-circle"></i></button>
                                <?php } else { ?>
                                    <button class="member-add-friend" data-id="<?php echo $member[0] ?>"><i class="fa fa-plus-circle"></i></button>
                                <?php } ?>
                            <?php } ?>

                        </div>


                    </div>

                </div>
            <?php } ?>


        </div>

    </div>


    <script src="members.js"></script>


</body>



</html>
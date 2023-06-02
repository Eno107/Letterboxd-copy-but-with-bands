<?php

include('php/db_connect.php');

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

$id = $_GET['id'];

$sql = "SELECT * FROM artist WHERE id=$id";
$result = mysqli_query($conn, $sql);
$artist = mysqli_fetch_assoc($result);


$sql = "SELECT * FROM album WHERE artist=$id";
$result = mysqli_query($conn, $sql);
$albums = mysqli_fetch_all($result);


$rating_averages = array();
foreach ($albums as $album) {

    $album_id = $album[0];
    $sql = "SELECT AVG(rating) AS avg_rating FROM log WHERE album_id = $album_id";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $average_rating = $row['avg_rating'];
    if ($average_rating) {
        $rating_averages[$album_id] = $average_rating;
    } else {
        $rating_averages[$album_id] = 0;
    }
}

?>


<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image" href="./projectimgs/favicon-32x32.png">
    <link rel="stylesheet" href="discography.css">
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
        <div class="main-division">
            <div class="discography">

                <div class="message-container">
                    <span>
                        ALBUMS WRITTEN BY
                    </span>
                    <div id="band/songwriter name">
                        <?php echo ($artist['Name'])  ?>
                    </div>
                </div>

                <div class="sorting-container">
                    <hr>
                    <div class="sorting-options">
                        <span>Sort by</span>
                        <button id="rate-button">Ratings</button>
                        <button id="len-button">Length</button>
                        <button id="name-button">Name</button>
                        <button id="year-button">Year</button>
                    </div>
                    <hr>
                </div>

                <div class="albums-container">
                    <?php foreach ($albums as $album) { ?>
                        <a href="album.php?id=<?php echo $album[0]; ?>" data-year="<?php echo $album[5]; ?>" data-length="<?php echo $album[4]; ?>" data-name="<?php echo $album[1]; ?> " data-rating="<?php echo $rating_averages[$album[0]]; ?>">
                            <img src="<?php echo $album[3]; ?>" alt="">
                        </a>
                    <?php } ?>
                </div>
            </div>

            <div class="information">
                <img src="<?php echo $artist['prof_pic']; ?>" alt="">


                <p>
                    <?php echo $artist['biography'] ?>
                </p>
            </div>
        </div>
    </div>

    <script src="discography.js"> </script>
</body>

</html>
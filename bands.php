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

$sql = "SELECT * FROM artist";
$result = mysqli_query($conn, $sql);
$artists = mysqli_fetch_all($result);
$nrArtists = count($artists);

$nrOfAlbums = array();
for ($i = 0; $i < $nrArtists; $i++) {

    $artist_id = $artists[$i][0];

    $sql = "SELECT COUNT(*) AS occurrences
            FROM album
            WHERE artist = $artist_id";
    $result = mysqli_query($conn, $sql);
    $albums = mysqli_fetch_row($result);
    $nrOfAlbums[] = $albums;
}
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image" href="./projectimgs/favicon-32x32.png">
    <link rel="stylesheet" href="bands.css">
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

            <?php for ($i = 0; $i < $nrArtists; $i++) { ?>

                <div class="main-container">
                    <div class="inside-main-container">
                        <img src="<?php echo ($artists[$i][2]) ?>" alt="">

                        <div class="text-container">
                            <span><a href="discography.php?id=<?php echo $artists[$i][0]; ?>"><?php echo ($artists[$i][1]) ?></a></span>

                            <div>
                                Genre: <?php echo ($artists[$i][4]) ?> <br>
                                Number of albums: <?php echo ($nrOfAlbums[$i][0]) ?> <br>
                            </div>

                        </div>
                    </div>
                </div>

            <?php } ?>
        </div>



    </div>
</body>

</html>
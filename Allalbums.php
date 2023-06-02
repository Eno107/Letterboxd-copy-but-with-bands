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

$sql = "SELECT MAX(album_id) AS max_id FROM album;";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_row($result);
$maxID = $row[0];


$sql = "SELECT MIN(album_id) AS max_id FROM album;";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_row($result);
$minID = $row[0];

$randomAlbums = array();
$usedAlbumIds = array();



for ($i = 0; $i < 20; $i++) {

    $randomId = rand($minID, $maxID);

    while (in_array($randomId, $usedAlbumIds)) {
        $randomId = rand($minID, $maxID);
    }

    $usedAlbumIds[] = $randomId;


    $sql = "SELECT * FROM album WHERE album_id = " .  $randomId;
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $randomAlbums[] = $row;
}


$randomArtists = array();

for ($i = 0; $i < 20; $i++) {

    $artist_id = $randomAlbums[$i]['artist'];

    $sql = "SELECT * FROM artist WHERE id =$artist_id";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $randomArtists[] = $row;
}


?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image" href="./projectimgs/favicon-32x32.png">
    <link rel="stylesheet" href="Allalbums.css">
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

            <?php for ($i = 0; $i < 20; $i++) {  ?>

                <div class="main-container">

                    <div class="inside-container">

                        <img src="<?php echo ($randomAlbums[$i]['prof_pic']) ?>" alt="">

                        <div class="text-container">
                            <span><a href="album.php?id=<?php echo $randomAlbums[$i]['album_id']; ?>"><?php echo ($randomAlbums[$i]['name']) ?></a></span>

                            <div>
                                <a href="discography.php?id=<?php echo $randomArtists[$i]['id']; ?>"><?php echo ($randomArtists[$i]['Name']) ?></a> - <?php echo ($randomArtists[$i]['genre']) ?>
                            </div>

                        </div>


                    </div>

                </div>

            <?php } ?>
        </div>


    </div>


</body>



</html>
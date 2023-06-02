<?php

include("php/db_connect.php");
session_start();

if (isset($_SESSION['id'])) {
    $isUser = true;
    $user_id = $_SESSION['id'];
    $sql = "SELECT * FROM user WHERE id=$user_id";
    $result = mysqli_query($conn, $sql);
    $user = mysqli_fetch_assoc($result);
} else {
    $isUser = false;
}

$sql = "SELECT a.* FROM album a
        JOIN soundlist s ON a.album_id = s.album_id
        WHERE s.user_id = $user_id";

$result = mysqli_query($conn, $sql);
$slAlbums = array();

if (mysqli_num_rows($result) > 0) {
    $counter = 1;
    while ($row = mysqli_fetch_assoc($result)) {
        $slAlbums[] = $row;
    }
}


$rating_averages = array();
foreach ($slAlbums as $album) {

    $album_id = $album["album_id"];
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


// $slAlbums = null;
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image" href="./projectimgs/favicon-32x32.png">
    <link rel="stylesheet" href="allSoundList.css">
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


        <?php if (!empty($slAlbums)) { ?>
            <div class="albums-container">


                <?php
                for ($i = 0; $i < count($slAlbums); $i++) {
                    $album = $slAlbums[$i];
                ?>
                    <a href="album.php?id=<?php echo ($album['album_id']) ?>" style=" background-image: url(<?php echo ($album['prof_pic']) ?>);" data-year="<?php echo $album['relase']; ?>" data-length="<?php echo $album['length']; ?>" data-name="<?php echo $album['name']; ?>" data-rating="<?php echo $rating_averages[$album["album_id"]]; ?>">
                        &nbsp;
                    </a>
                <?php } ?>
            </div>

        <?php } else { ?>
            <div id="soundtrack-wishlist"></div>

        <?php } ?>
        <br><br>

    </div>

    <script>
        const wishlistContainer = document.getElementById("soundtrack-wishlist");

        var element = $("<span>").text("Nothing is yet added to the soundlist. Click ").addClass("no-activity-text");
        $("<a>").text("here").attr("href", "Allalbums.php").appendTo(element);
        $("<span>").text(" to start browsing our choices").addClass("no-activity-text").appendTo(element);
        element.appendTo(wishlistContainer);
    </script>

    <script src="discography.js"></script>
</body>

</html>
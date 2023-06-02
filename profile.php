<?php

include("php/db_connect.php");
session_start();
if (isset($_SESSION['id'])) {
    $isUser = true;
    $id = $_SESSION['id'];
    $sql = "SELECT * FROM user WHERE id=$id";
    $result = mysqli_query($conn, $sql);
    $user = mysqli_fetch_assoc($result);
    $member_id = $id;
    $user2 = $user;
} else{
    $isUser = false;
}

if (isset($_GET['id'])) {
    $member_id = $_GET['id'];
    $sql = "SELECT * FROM user WHERE id=$member_id";
    $result = mysqli_query($conn, $sql);
    $user2 = mysqli_fetch_assoc($result);
}


//gets favourite albums
$sql = "SELECT ua.fav_order, a.* FROM userfavalbum ua JOIN album a ON ua.album_id = a.album_id WHERE ua.user_id = $member_id";
$result = mysqli_query($conn, $sql);

$favoriteAlbums = array();

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $favoriteAlbums[$row['fav_order']] = $row;
    }
}

$isFav1 = isset($favoriteAlbums[1]);
$isFav2 = isset($favoriteAlbums[2]);
$isFav3 = isset($favoriteAlbums[3]);
$isFav4 = isset($favoriteAlbums[4]);

$album1 = $favoriteAlbums[1] ?? null;
$album2 = $favoriteAlbums[2] ?? null;
$album3 = $favoriteAlbums[3] ?? null;
$album4 = $favoriteAlbums[4] ?? null;

$sql = "SELECT a.* FROM album a
        JOIN soundlist s ON a.album_id = s.album_id
        WHERE s.user_id = $member_id
        LIMIT 4";


$result = mysqli_query($conn, $sql);
$slAlbums = array();

if (mysqli_num_rows($result) > 0) {
    $counter = 1;
    while ($row = mysqli_fetch_assoc($result)) {
        $slAlbums[] = $row;
    }
}

// get number of albums in the soundlist
$sql = "SELECT COUNT(*) AS album_count FROM soundlist WHERE user_id = $member_id";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$album_count = $row['album_count'];


//get Number of Albums logged:
$sql = "SELECT COUNT(*) AS album_count FROM log WHERE user_id = $member_id";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$logged_number = $row['album_count'];

//get 4 most recent logged albums
$sql = "SELECT a.* FROM log AS l JOIN album AS a ON l.album_id = a.album_id WHERE l.user_id = $member_id ORDER BY l.time_created DESC LIMIT 4";
$result = mysqli_query($conn, $sql);
$loggedAlbums = mysqli_fetch_all($result);

//get rating of 4 most recent logged albums
$ratingsRecent = array();
for ($i = 0; $i < count($loggedAlbums); $i++) {
    $album = $loggedAlbums[$i];

    $sql = "SELECT rating FROM log WHERE album_id = $album[0] AND user_id = $member_id";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $ratingsRecent[] = $row['rating'];
}

//get number of albums in this year
$sql = "SELECT COUNT(*) AS album_count FROM log WHERE YEAR(time_created) = YEAR(CURDATE()) AND user_id = $member_id";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$logged_number_this_year = $row['album_count'];

//get number of albums logged with 1 star
$sql = "SELECT COUNT(*) AS album_count FROM log WHERE user_id = $member_id AND rating = 1";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$logged_1 = $row['album_count'];

//get number of albums logged with 2 star
$sql = "SELECT COUNT(*) AS album_count FROM log WHERE user_id = $member_id AND rating = 2";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$logged_2 = $row['album_count'];

//get number of albums logged with 3 star
$sql = "SELECT COUNT(*) AS album_count FROM log WHERE user_id = $member_id AND rating = 3";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$logged_3 = $row['album_count'];

//get number of albums logged with 4 star
$sql = "SELECT COUNT(*) AS album_count FROM log WHERE user_id = $member_id AND rating = 4";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$logged_4 = $row['album_count'];

//get number of albums logged with 5 star
$sql = "SELECT COUNT(*) AS album_count FROM log WHERE user_id = $member_id AND rating = 5";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$logged_5 = $row['album_count'];

//get number of people you follow 
$sql = "SELECT COUNT(*) AS following_count FROM friendship WHERE user_id1 = $member_id";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$following = $row['following_count'];

//get number of people that follow you
$sql = "SELECT COUNT(*) AS followers_count FROM friendship WHERE user_id2 = $member_id";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$followers = $row['followers_count'];
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orpheus</title>
    <link rel="icon" type="image" href="./projectimgs/favicon-32x32.png">
    <link rel="stylesheet" href="./profile.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Proxima+Nova&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>

    <?php
    if ($isUser)
        include("header.php");
    else
        include("noUserHeader.php");
    ?>

    <div class="body-container">

        <div class="body-header-container">

            <div class="body-image-text-container">
                <img src="<?php echo ($user2['prof_pic']); ?>" alt="">
                <div class="name-button-container">
                    <span><?php echo ($user2['username']); ?></span>
                    <?php if (!isset($_GET['id'])) { ?>
                        <button id="edit-profile-button">Edit Profile</button>
                        <button id="sing-out-button">Sign Out</button>
                    <?php } ?>
                </div>
            </div>

            <div class="body-information-container">
                <div class="body-information">
                    <div><?php echo $logged_number ?></div>
                    <span>ALBUMS</span>
                </div>

                <div class="vertical-line"></div>

                <div class="body-information">
                    <div><?php echo $logged_number_this_year ?></div>
                    <span>THIS YEAR</span>
                </div>

                <div class="vertical-line"></div>

                <div class="body-information">
                    <div><?php echo $following ?></div>
                    <span>FOLLOWING</span>
                </div>

                <div class="vertical-line"></div>

                <div class="body-information">
                    <div><?php echo $followers ?></div>
                    <span>FOLLOWERS</span>
                </div>
            </div>

        </div>

        <?php if (!isset($_GET['id'])) { ?>
            <div class="body-options-container">
                <a href="AllLoggedAlbums.php">Albums</a>
                <a href="allSoundList.php">Soundlist</a>
            </div>
        <?php } ?>

        <div class="body-main-content">

            <div class="body-main-content-left">
                <div class="dividing-messages">FAVORITE ALBUMS
                    <hr>
                </div>

                <?php if ($album1 || $album2 || $album3 || $album4) { ?>

                    <div class="albums-container">
                        <?php
                        if ($album1) {
                        ?>
                            <a href="album.php?id=<?php echo ($album1['album_id']) ?>" style=" background-image: url(<?php echo ($album1['prof_pic']) ?>);">&nbsp;</a>
                        <?php
                        } else {
                        ?>
                            <a href="javascript:void(0)"></a>
                        <?php } ?>

                        <?php
                        if ($album2) {
                        ?>
                            <a href="album.php?id=<?php echo ($album2['album_id']) ?>" style=" background-image: url(<?php echo ($album2['prof_pic']) ?>);">&nbsp;</a>
                        <?php
                        } else {
                        ?>
                            <a href="javascript:void(0)"></a>
                        <?php } ?>

                        <?php
                        if ($album3) {
                        ?>
                            <a href="album.php?id=<?php echo ($album3['album_id']) ?>" style=" background-image: url(<?php echo ($album3['prof_pic']) ?>);">&nbsp;</a>
                        <?php
                        } else {
                        ?>
                            <a href="javascript:void(0)"></a>
                        <?php } ?>

                        <?php
                        if ($album4) {
                        ?>
                            <a href="album.php?id=<?php echo ($album4['album_id']) ?>" style=" background-image: url(<?php echo ($album4['prof_pic']) ?>);">&nbsp;</a>
                        <?php
                        } else {
                        ?>
                            <a href="javascript:void(0)"></a>
                        <?php } ?>
                    </div>
                <?php } else { ?>

                    <?php if (!isset($_GET['id'])) { ?>
                        <div id="favourite-albums"></div>
                    <?php } else { ?>
                        <div class="no-activity-text">User hasn't selected any favourite albums</div>
                    <?php } ?>


                <?php } ?>

                <div class="dividing-messages">RECENT ACTIVITY
                    <hr>
                </div>
                <?php
                if (!empty($loggedAlbums)) {
                ?>
                    <div class="logged-albums-container">
                        <?php
                        for ($i = 0; $i < count($loggedAlbums); $i++) {
                            $album = $loggedAlbums[$i];
                            $rating = $ratingsRecent[$i];
                        ?>
                            <div class="logged-album-img-rating">
                                <a href="album.php?id=<?php echo ($album[0]) ?>" style=" background-image: url(<?php echo ($album[3]) ?>);">&nbsp;</a>
                                <span>
                                    <?php for ($j = 0; $j < $rating; $j++) { ?>
                                        <span class="main-log-stars" style="color:gold;">&#9734;</span>
                                    <?php } ?>
                                    <?php for ($j = $rating; $j < 5; $j++) { ?>
                                        <span class="main-log-stars" style="color:#c8d1dc76">&#9734;</span>
                                    <?php } ?>
                                </span>

                            </div>

                        <?php } ?>
                    </div> <?php } else { ?>

                    <?php if (!isset($_GET['id'])) { ?>
                        <div id="recent-activity"> </div>
                    <?php } else { ?>
                        <div class="no-activity-text">User hasn't logged any albums</div>
                    <?php } ?>


                <?php } ?>


            </div>

            <scetion class="body-main-content-right">


                <div class="dividing-messages">SOUNDLIST - <?php echo ($album_count) ?>
                    <hr>
                </div>
                <?php
                if (!empty($slAlbums)) {
                ?>
                    <div class="albums-container">
                        <?php
                        for ($i = 0; $i < count($slAlbums); $i++) {
                            $album = $slAlbums[$i];
                        ?>
                            <a href="album.php?id=<?php echo ($album['album_id']) ?>" style=" background-image: url(<?php echo ($album['prof_pic']) ?>);">&nbsp;</a>
                        <?php } ?>
                    </div> <?php } else { ?>
                    <?php if (!isset($_GET['id'])) { ?>
                        <div id="soundtrack-wishlist"></div>
                    <?php } else { ?>
                        <div class="no-activity-text">User hasn't any album in their soundlist</div>
                    <?php } ?>

                <?php } ?>

                <div class="dividing-messages">RATINGS
                    <hr>
                </div>
                <?php if ($logged_number != 0) { ?>
                    <div class="rating-container">
                        <div class="rating-bar">
                            <div class="rating-bar-fill" style="height: <?php echo ($logged_1 / $logged_number) * 100; ?>%;"></div>
                        </div>

                        <div class="rating-bar">
                            <div class="rating-bar-fill" style="height: <?php echo ($logged_2 / $logged_number) * 100; ?>%;"></div>
                        </div>
                        <div class="rating-bar">
                            <div class="rating-bar-fill" style="height: <?php echo ($logged_3 / $logged_number) * 100; ?>%;"></div>
                        </div>
                        <div class="rating-bar">
                            <div class="rating-bar-fill" style="height: <?php echo ($logged_4 / $logged_number) * 100; ?>%;"></div>
                        </div>

                        <div class="rating-bar">
                            <div class="rating-bar-fill" style="height: <?php echo ($logged_5 / $logged_number) * 100; ?>%;"></div>
                        </div>
                    </div>
                    <section class="rating-stats">
                        1 Star Ratings: <span><?php echo $logged_1 ?></span> <br>
                        2 Star Ratings: <span><?php echo $logged_2 ?></span> <br>
                        3 Star Ratings: <span><?php echo $logged_3 ?></span> <br>
                        4 Star Ratings: <span><?php echo $logged_4 ?></span> <br>
                        5 Star Ratings: <span><?php echo $logged_5 ?></span> <br>
                    </section>
                <?php } else { ?>
                    <?php if (!isset($_GET['id'])) { ?>
                        <div id="ratings"></div>
                    <?php } else { ?>
                        <div class="no-activity-text">User hasn't rated anything yet</div>
                    <?php } ?>
                <?php } ?>

                </section>

        </div>

        <br><br><br><br>

        <script src="profile.js"></script>

        <script>
            const button = document.getElementById('edit-profile-button');
            button.addEventListener('click', () => {
                window.location.href = "editProfile.php";
            })
        </script>

</body>

</html>
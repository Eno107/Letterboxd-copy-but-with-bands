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

//get 5 most recent logged albums
$sql = "SELECT a.* FROM log AS l JOIN album AS a ON l.album_id = a.album_id ORDER BY l.time_created DESC LIMIT 5";
$result = mysqli_query($conn, $sql);
$loggedAlbums = mysqli_fetch_all($result);

//get 5 most recent users who have logged set album
$sql = "SELECT u.* FROM log AS l JOIN user AS u ON l.user_id = u.id ORDER BY l.time_created DESC LIMIT 5";
$result = mysqli_query($conn, $sql);
$loggedUsers = mysqli_fetch_all($result);

//get 5 most recent ratings 
$sql = "SELECT rating FROM log ORDER BY time_created DESC LIMIT 5";
$result = mysqli_query($conn, $sql);
$ratings = mysqli_fetch_all($result);

//get 5 most popular logged albums
$sql = "SELECT a.*, COUNT(*) AS log_count
FROM album a
JOIN log l ON a.album_id = l.album_id
GROUP BY a.album_id
ORDER BY log_count DESC
LIMIT 5";
$result = mysqli_query($conn, $sql);
$popularAlbums = mysqli_fetch_all($result);

//check if user has following
$sql = "SELECT * from friendship WHERE user_id1 = $test";
$result = mysqli_query($conn, $sql);
$hasFollowing = mysqli_fetch_row($result);

//get most recent logs from following
$sql = "SELECT user_id2 FROM friendship WHERE user_id1 = $test";
$result = mysqli_query($conn, $sql);

$friend_ids = array();
while ($row = mysqli_fetch_assoc($result)) {
    $friend_ids[] = $row['user_id2'];
}

$friend_ids_string = implode(',', $friend_ids);

$recent_albums = null;
if (!empty($friend_ids_string)) {
    $sql = "SELECT l.album_id, a.name, l.rating, u.username, u.prof_pic, a.prof_pic AS album_prof_pic
            FROM log AS l
            INNER JOIN album AS a ON l.album_id = a.album_id
            INNER JOIN user AS u ON l.user_id = u.id
            WHERE l.user_id IN ($friend_ids_string)
            GROUP BY l.album_id
            ORDER BY MAX(l.time_created) DESC LIMIT 5";

    // Execute the query and fetch the results
    $result = mysqli_query($conn, $sql);
    $recent_albums = mysqli_fetch_all($result, MYSQLI_ASSOC);
} 


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orpheus</title>
    <link rel="icon" type="image" href="./projectimgs/favicon-32x32.png">
    <link rel="stylesheet" href="./main.css">
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
        <?php if (!$hasFollowing) { ?>
            <span class="body-main-message1">Welcome &nbsp;<a href="./profile.php"><?php echo ($user['username']); ?></a>. Here’s what we have been
                listening...</span>
            <span class="body-main-message2">This homepage will become costumized as you&nbsp;<a href="#">follow
                    members.</a></span>
        <?php } else { ?>
            <span class="body-main-message1">Welcome &nbsp;<a href="./profile.php"><?php echo ($user['username']); ?></a>. Here’s what your friends have been listening...</span></span>
        <?php } ?>

        <?php if ($hasFollowing) { ?>
            <div class="dividing-messages">FRIENDS HAVE LISTEND TO...
                <hr>
            </div>

            <?php if (is_null($recent_albums)) { ?>
                <div style="color: #c8d1dcbf">Your followers haven't logged any albums</div>
            <?php } else { ?>
                <div class="albums-container">

                    <?php
                    foreach ($recent_albums as $album) {  ?>

                        <a class="image-container" href="album.php?id=<?php echo ($album['album_id']) ?>" style="width:19.2%">
                            <img src="<?php echo ($album['album_prof_pic']) ?>" class="best-albums-poster" alt="Your Image">
                            <div class="image-overlay">
                                <img src="<?php echo ($album['prof_pic']) ?>">
                                <div><?php echo ($album['username']) ?></div>
                            </div>
                            <div class="image-text">
                                <?php for ($j = 0; $j < $album['rating']; $j++) { ?>
                                    <span class="main-log-stars" style="color:gold;">&#9734;</span>
                                <?php } ?>
                                <?php for ($j = $album['rating']; $j < 5; $j++) { ?>
                                    <span class="main-log-stars">&#9734;</span>
                                <?php } ?>
                            </div>
                        </a>

                    <?php } ?>

                </div>

            <?php } ?>
        <?php } ?>

        <div class="dividing-messages">NEW LISTENS...
            <hr>
        </div>
        <div class="albums-container">
            <?php
            for ($i = 0; $i < count($loggedAlbums); $i++) {
                $album = $loggedAlbums[$i];
                $user = $loggedUsers[$i];
                $rating = $ratings[$i]
            ?>
                <a class="image-container" href="album.php?id=<?php echo ($album[0]) ?>">
                    <img src="<?php echo ($album[3]) ?>" class="best-albums-poster" alt="Your Image">
                    <div class="image-overlay">
                        <img src="<?php echo ($user[4]) ?>">
                        <div class><?php echo ($user[1]) ?></div>
                    </div>
                    <div class="image-text">
                        <?php for ($j = 0; $j < $rating[0]; $j++) { ?>
                            <span class="main-log-stars" style="color:gold;">&#9734;</span>
                        <?php } ?>
                        <?php for ($j = $rating[0]; $j < 5; $j++) { ?>
                            <span class="main-log-stars">&#9734;</span>
                        <?php } ?>
                    </div>
                </a>
            <?php } ?>
        </div>

        <a class="discover-container" href="Allalbums.php">
            <i class="fa fa-puzzle-piece" aria-hidden="true"></i>
            <div class="discover-text-container">
                <span>Find your new groove now!</span>
                <div>Discover New Albums! Search through our vast collection and uncover new musical gems that will
                    leave you wanting
                    more.</div>
            </div>
        </a>


        <div id="dividing-message-genre">
            <span>MAIN ARTICLE IN...</span>
            <div class="select-genre">
                <select name="" id="genre">
                    <option value="Rock" selected>Rock</option>
                    <option value="Hip-Hop">Hip-Hop</option>
                    <option value="Metal">Metal</option>
                    <option value="Jazz">Jazz</option>
                    <option value="Rap">Rap</option>
                    <option value="Punk">Punk</option>
                    <option value="R&B">R&B</option>
                </select>
            </div>
        </div>
        <hr>
        <a id="random-genre-article">

        </a>


        <div class="dividing-messages">POPULAR...
            <hr>
        </div>
        <div class="albums-container">
            <?php for ($i = 0; $i < count($popularAlbums); $i++) {
                $album = $popularAlbums[$i];
            ?>
                <a href="album.php?id=<?php echo ($album[0]) ?>"><img src="<?php echo ($album[3]) ?>" class="best-albums-poster"></a>

            <?php } ?>
        </div>



        <div class="dividing-messages">RECENT NEWS
            <hr>
        </div>
        <div class="article-container">
            <div id="articles-column-1"></div>

            <div id="articles-column-2"></div>

            <div id="articles-column-3"></div>
        </div>
    </div>

    <script src="./main.js"></script>
</body>

</html>
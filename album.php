<?php

include('php/db_connect.php');

session_start();

//check if user is logged in
if (isset($_SESSION['id'])) {
    $isUser = true;
    $test = $_SESSION['id'];
    $sql = "SELECT * FROM user WHERE id=$test";
    $result = mysqli_query($conn, $sql);
    $user = mysqli_fetch_assoc($result);
    $user_json = json_encode($test);
} else {
    $isUser = false;
}

//get id from url
$id = $_GET['id'];

//get album from database
$sql = "SELECT * FROM album WHERE album_id=$id";
$result = mysqli_query($conn, $sql);
$album = mysqli_fetch_assoc($result);


$exists = false;
$isLogged = false;
if (isset($_SESSION['id'])) {
    $sql = "SELECT * FROM soundlist WHERE user_id=$test AND album_id=$id";
    $result = mysqli_query($conn, $sql);

    if ($row = mysqli_fetch_assoc($result)) {
        $exists = true;
    }

    $sql = "SELECT * FROM log WHERE user_id=$test AND album_id=$id";
    $result = mysqli_query($conn, $sql);

    if ($row = mysqli_fetch_assoc($result)) {
        $isLogged = true;
    }
}


//get artist using foreing key of album
$artist_id = $album['artist'];
$sql2 = "SELECT * FROM artist WHERE id=$artist_id";
$result2 = mysqli_query($conn, $sql2);
$artist = mysqli_fetch_assoc($result2);

//get tracklist using foreign key of album
$sql4 = "SELECT * FROM trackkk WHERE album_id=$id";
$result4 = mysqli_query($conn, $sql4);
$test = mysqli_fetch_assoc($result4);


$album_json = json_encode($album['album_id']);

$exists_json = json_encode($exists);

$isLogged_json = json_encode($isLogged);

$album_prof_json = json_encode($album['prof_pic']);
$album_name_json = json_encode($album['name']);

//get Number of Albums logged:
$sql = "SELECT COUNT(*) AS album_count FROM log WHERE album_id = $id";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$logged_number = $row['album_count'];

//get number of albums logged with 1 star
$sql = "SELECT COUNT(*) AS album_count FROM log WHERE album_id = $id AND rating = 1";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$logged_1 = $row['album_count'];

//get number of albums logged with 2 star
$sql = "SELECT COUNT(*) AS album_count FROM log WHERE album_id = $id AND rating = 2";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$logged_2 = $row['album_count'];

//get number of albums logged with 3 star
$sql = "SELECT COUNT(*) AS album_count FROM log WHERE album_id = $id AND rating = 3";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$logged_3 = $row['album_count'];

//get number of albums logged with 4 star
$sql = "SELECT COUNT(*) AS album_count FROM log WHERE album_id = $id AND rating = 4";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$logged_4 = $row['album_count'];

//get number of albums logged with 5 star
$sql = "SELECT COUNT(*) AS album_count FROM log WHERE album_id = $id AND rating = 5";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$logged_5 = $row['album_count'];


?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image" href="./projectimgs/favicon-32x32.png">
    <link rel="stylesheet" href="./album.css">
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

            <div class="left-side">
                <img src="<?php echo ($album['prof_pic']); ?>" alt="">
                <section>
                    <span class="left-detail">Details:</span>
                    <span class="left-text">
                        Length: <span><?php echo ($album['length']) ?></span> <br>
                        Relase Year: <span> <?php echo ($album['relase']) ?></span> <br>
                        Total People Listened: <span> <?php echo $logged_number ?></span>
                    </span>
                </section>
            </div>

            <div class="right-side">
                <div class="right-main-text">
                    <span><?php echo ($album['name']); ?></span>
                    <span>Written by&nbsp;<a href="discography.php?id=<?php echo $artist_id; ?>"><?php echo ($artist['Name']); ?></a></span>
                </div>
                <hr>
                <div class=" right-divison">
                    <div class="tracks">
                        <?php echo ($test['trackList']); ?>
                    </div>

                    <div class="right-right-division">

                        <?php if ($isUser) { ?>
                            <div class="log-container">
                                <div class="icon-text-row-container">
                                    <div class="icon-text-container">
                                        <button class="notPart" id="icon-log-button"><i class="fa fa-headphones"></i></button>
                                        <span>+Log</span>
                                    </div>

                                    <div class="icon-text-container">
                                        <button id="soundlist" class="notPart"><i class="fa fa-plus-circle"></i></button>
                                        <span>+Soundlist</span>
                                    </div>
                                </div>
                                <hr>
                                <div class="option-container">
                                    <button class="clear-button" id="spotify">Spotify</button>
                                </div>
                            </div>
                        <?php } ?>

                        <div class="dividing-messages">Ratings
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
                            <div class="no-activity-text">Album has not been rated yet.</div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <br><br>
    <script>
        const spotify = document.getElementById('spotify');
        const link = "<?php echo ($album['spotify']); ?>";

        spotify.addEventListener('click', () => {
            window.open(link, "_blank");
        });
    </script>

    <script>
        var jsonString = '<?php echo $user_json; ?>'
        var user_id = JSON.parse(jsonString);

        var jsonString = '<?php echo $album_json; ?>';
        var album_id2 = JSON.parse(jsonString);

        var jsonString = '<?php echo $album_prof_json; ?>';
        var album_prof_pic = JSON.parse(jsonString);

        var jsonString = '<?php echo $album_name_json; ?>';
        var album_name = JSON.parse(jsonString);

        var jsonString = '<?php echo $exists ?>';
        if (jsonString) {
            var exists = JSON.parse(jsonString);
        }

        var jsonString = '<?php echo $isLogged ?>';
        if (jsonString) {
            var isLogged = JSON.parse(jsonString);
        }

        const headphonesButton = document.getElementById("icon-log-button");

        headphonesButton.addEventListener("click", () => {

            logAlbum.classList.remove("hidden");
            album_id = album_id2;
            logImg.setAttribute('src', album_prof_pic);
            logName.innerHTML = album_name

        });

        const soundList = document.getElementById("soundlist");
        let clicked = 0;

        if (exists) {
            soundList.style.color = "rgba(175, 12, 12, 0.629)";
            soundList.classList.remove("notPart");
            clicked = 1;
        }

        if (isLogged) {
            headphonesButton.style.color = "rgba(175, 12, 12, 0.629)";
        }

        soundList.addEventListener("click", () => {

            if (clicked != 0) {
                return;
            }

            console.log(album_id2);
            console.log(user_id);

            clicked = 1;

            soundList.style.color = "rgba(175, 12, 12, 0.629)";
            soundList.classList.remove("notPart");

            const xhr = new XMLHttpRequest();
            xhr.open('POST', 'php/addSoundList.php', true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            const params = 'album_id=' + encodeURIComponent(album_id2) +
                '&user_id=' + encodeURIComponent(user_id);

            xhr.send(params);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === XMLHttpRequest.DONE) {
                    if (xhr.status === 200) {
                        // window.location.href = "editProfile.php";
                    } else {
                        console.error(xhr.responseText);
                    }
                }
            };

        })
    </script>

</body>

</html>
<?php

include("php/db_connect.php");

session_start();
$test = $_SESSION['id'];
$sql = "SELECT * FROM user WHERE id=$test";
$result = mysqli_query($conn, $sql);
$user = mysqli_fetch_assoc($result);




?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image" href="./projectimgs/favicon-32x32.png">
    <link rel="stylesheet" href="about.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Proxima+Nova&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>Orpheus</title>
</head>

<body>

    <div class="header-image-container">
        <header class="header">
            <div class="header-container">
                <a href="./main.php" class="header-image-link">
                    <img src="./projectimgs/favicon-32x32.png" alt="">
                    <span>
                        <h1>ORPHEUS</h1>
                    </span>
                </a>

                <nav class="nav" id="nav-bar">
                    <a href="profile.php" class="profile-image-link">
                        <img src="<?php echo ($user['prof_pic']); ?>" alt="">
                        <span>
                            <h4><?php echo ($user['username']); ?></h4>
                        </span>
                    </a>
                    <a href="bands.php">
                        <h4>BANDS</h4>
                    </a>
                    <a href="Allalbums.php">
                        <h4>ALBUMS</h4>
                    </a>
                    <a href="members.php">
                        <h4>MEMBERS</h4>
                    </a>
                    <a href="AllLoggedAlbums.php">
                        <h4>DIARY</h4>
                    </a>
                    <button id="header-icon-button">
                        <i class="fa fa-search" id="search-icon"></i>
                    </button>
                    <button class="button-42" role="button" id="button-42">+ LOG</button>
                </nav>
            </div>

            <div class="main-message">

                <h1>Let the melodies guide you through a new journey…</h1>
                <p>Orpheus will be your helping hand in keeping track of music you have never heard before, be it from
                    underground or
                    upcoming artists. This way, you will never run out of new albums to check out or recommend to
                    friends and family,
                    building a bridge of connection between listeners and artists in the global community of music.</p>
            </div>

        </header>
    </div>




    <div class="body-container">

        <section class="container">
            <div class="left-text">
                <span>Show us what you have been listening to</span>
                <p>Orpheus works best when we are in touch with what music you have experienced and enjoyed before. When
                    you come in
                    contact with albums you have heard before, you can click the eye icon near the cover art to tell us
                    that you have heard
                    it, and if you enjoyed this album, you can click the heart icon to show us that it is one of your
                    favorites (and even
                    leave a star rating!). All heard albums will be added to the Albums tab where reviews can be shown
                    about them and other
                    cool stuff. Your detailed stats are recorded and used by us to provide you as a user a more engaging
                    experience.</p>
            </div>
            <div class="right-img">
                <img src="./projectimgs/about1.png" alt="Wide Image">
            </div>
        </section>

        <section class="container">
            <div class="left-img">
                <img src="./projectimgs/about2.png" alt="Wide Image">
            </div>
            <div class="right-text">
                <span>Browse what you have listened</span>
                <p>All heard albums can be found in the albums tab of your profile. The more albums you add, the more
                    your taste in music
                    is reflected. You can also browse albums listened by other members, friends or the global community
                    of users to find
                    more great albums to listen to.</p>
            </div>
        </section>

        <section class="container">
            <div class="left-text">
                <span>Save albums to listen to later</span>
                <p>One of the most important aspects of Orpheus is your own personalized log of albums to listen to in a
                    later time. To add
                    an album to the "soundlist" simply click on the clock icon next to an album that you have not heard
                    before or that has
                    not yet released. If an album is marked as listened, it will move from the soundlist to your Albums.
                </p>
            </div>
            <div class="right-img">
                <img src="./projectimgs/about3.png" alt="Wide Image">
            </div>
        </section>

        <section class="container">
            <div class="left-img">
                <img src="./projectimgs/about4.png" alt="Wide Image" style="width: 200%">
            </div>
            <div class="right-text">
                <span>Log an album</span>
                <p>Logging an album will tell us you listened to it at a certain point and time in your music journey, accompanied by a
                    review and/or rating. All logged albums are added to your personal diary, which can be your go-to reference for
                    end-of-year music resolution. Albums can be rated without logging them too, either from the Album or Review tab.</p>
            </div>
        </section>

        <section class="container">
            <div class="left-text">
                <span>Activity and following</span>
                <p>The best way to find members to follow is by reading reviews of albums you enjoy, so you can identify other users with
                    similar opinions as yours. Our members page lists popular accounts. The more people you follow, the more personal the
                    Activity stream will be, full of reviews and recommendations from followed members. This way you can find more and more
                    people with tour interests, as well as the other way around, using the incoming tab to see who is interacting with you.
                </p>
            </div>
            <div class="right-img">
                <img src="./projectimgs/about5.png" alt="Wide Image">
            </div>
        </section>
    </div>

    <script src="header.js"></script>

</body>

<html>
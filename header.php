<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image" href="./projectimgs/favicon-32x32.png">
    <link rel="stylesheet" href="header.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Proxima+Nova&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>Orpheus</title>
</head>

<body>

    <div class="hidden" id="test">
        <input type="text" id="searchInput" placeholder="Search for albums" class="wtf">
        <ul id="searchResults"></ul>
    </div>

    <div class="log-popup hidden" id="log-popup">
        <div class="log-popup-content">
            <div class="log-popup-content-container">
                <div class="main-message">
                    <span>Log an album</span>
                    <button class="log-popup-close-button"><i class="fa-thin fa-x">X</i></button>
                </div>

                <div class="log-search-container">
                    <section>
                        <input type="text" id="logInput" placeholder="Search for albums" autocomplete="off">
                        <ul id="logResults"></ul>
                    </section>
                </div>

            </div>
        </div>
    </div>

    <div class="log-album hidden" id="log-album">
        <div class="log-album-content">
            <div class="log-album-content-container">
                <div class="main-message">
                    <span>I Listened...</span>
                    <button class="log-album-close-button"><i class="fa-thin fa-x">X</i></button>
                </div>
                <div class="log-album-information-container">
                    <div class="log-album-left-side">

                        <img src="" alt="" id="log-album-img">

                    </div>
                    <div class="log-album-right-side">
                        <div class="log-album-right-side-text">
                            <span id="log-album-name" href="#" class="log-album-name"></span>
                        </div>
                        <div class="starContainer">
                            <span class="star" data-rating="1">&#9734;</span>
                            <span class="star" data-rating="2">&#9734;</span>
                            <span class="star" data-rating="3">&#9734;</span>
                            <span class="star" data-rating="4">&#9734;</span>
                            <span class="star" data-rating="5">&#9734;</span>
                        </div>
                        <button class="button-42" role="button" id="log-album-log-button">LOG</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <header class="header">
        <div class="header-container">
            <a href="main.php" class="header-image-link">
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
    </header>

    <script src="header.js"></script>
    <script src="search.js"></script>
</body>

</html>
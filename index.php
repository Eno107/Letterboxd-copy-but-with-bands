<?php

include("php/db_connect.php");

session_start();

unset($_SESSION['id']);

$sql = "SELECT username FROM user";
$result = mysqli_query($conn, $sql);
$usernames = mysqli_fetch_all($result);

$sql = "SELECT password FROM user";
$result = mysqli_query($conn, $sql);
$passwords = mysqli_fetch_all($result);

$usernames_json = json_encode($usernames);
$passwords_json = json_encode($passwords);

$sql = "SELECT a.*, COUNT(*) AS log_count
FROM album a
JOIN log l ON a.album_id = l.album_id
GROUP BY a.album_id
ORDER BY log_count DESC
LIMIT 5";
$result = mysqli_query($conn, $sql);
$popularAlbums = mysqli_fetch_all($result);

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image" href="./projectimgs/favicon-32x32.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Proxima+Nova&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b2c3068a92.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="index.css">
    <title>Orpheus</title>
</head>

<body>
    <div class="popup hidden" id="popup">
        <div class="popup-content">
            <div class="popup-content-container">
                <div class="main-message">
                    <span>JOIN ORPHEUS TODAY</span>
                    <button class="new-close-button"><i class="fa-thin fa-x"></i></button>
                </div>
                <form class="new-form" action="index.php" method="POST">
                    <label for="email">Email Address</label>
                    <input type="text" name="email">
                    <div id="email-error" class="error-message"></div>

                    <div class="form-gap"></div>

                    <label for="username">Username</label>
                    <input type="text" name="username">
                    <div id="username-error" class="error-message"></div>

                    <div class="form-gap" class="error-message"></div>

                    <label for="password">Password</label>
                    <input type="password" name="password">
                    <div id="password-error" class="error-message"></div>

                    <div class="form-gap"></div>

                    <input type="submit" value="Sign Up" name="submit" id="log-sub">
                </form>
            </div>
        </div>
    </div>

    <div class="popup hidden" id="log-in-popup">
        <div class="log-window">
            <div class="log-popup-content-container">

                <button class="log-close-button"><i class="fa-thin fa-x"></i></button>

                <form action="index.php" class="log-form" method="POST">
                    <div class="log-form-part">
                        <label for="username">Username</label>
                        <input type="text" name="username">
                    </div>

                    <div class="log-form-part">
                        <label for="password">Password</label>
                        <input type="password" name="password">
                    </div>

                    <input type="submit" value="Sign In" name="submit2">
                </form>
            </div>
        </div>
    </div>


    <div class="test">
        <header class="header">

            <div class="header-container">
                <a href="#" class="header-image-link">
                    <img src="./projectimgs/favicon-32x32.png" alt="">
                    <span>
                        <h1>ORPHEUS</h1>
                    </span>
                </a>

                <nav class="nav" id="nav-bar">

                    <a href="#" id="log-in">
                        <h4>LOG IN</h4>
                    </a>
                    <a href="#" id="create-account">
                        <h4>CREATE ACOOUNT</h4>
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

                    <div>
                        <input type="text" id="searchInput" placeholder="Search for albums" class="wtf">
                        <ul id="searchResults"></ul>
                    </div>

                </nav>
            </div>
            <span class="header-span"><a href="album.php?id=135" class="header-link">The Way It Ends - Currents(2020)</a></span>
            <div class="header-message-container">
                <p class="header-message">
                    <strong>
                        Track bands you’ve listened.<br>
                        Save those you want to hear.<br>
                        Tell your friends what’s good.<br>
                    </strong>
                </p>
            </div>

            <div class="header-button-container">
                <button class="header-button-link" href="#">GET STARTED!</button>
            </div>
        </header>
    </div>

    <div class="body-container">

        <div class="dividing-messages">MOST LISTENED...
            <hr>
        </div>
        <div class="best-albums-container">
            <?php for ($i = 0; $i < count($popularAlbums); $i++) {
                $album = $popularAlbums[$i];
            ?>
                <a href="album.php?id=<?php echo ($album[0]) ?>"><img src="<?php echo ($album[3]) ?>" class="best-albums-poster"></a>

            <?php } ?>
        </div>

        <div class="dividing-messages">ORPHEUS LETS YOU...
            <hr>
        </div>
        <div class="list-of-use-container">
            <div class="list-item-container">
                <div class="i-container"> <i class="fa fa-headphones"></i> </div>
                <div class="textbox"><span class='centerized-text'>Keep track of every album you have ever heard or will hear.</span>
                </div>
            </div>

            <div class="list-item-container">
                <div class="i-container"> <i class="fa fa-plus-circle"></i> </div>
                <div class="textbox"><span class='centerized-text'>Discover new artists of many genres.</span>
                </div>
            </div>

            <div class="list-item-container">
                <div class="i-container"> <i class="fa fa-user-plus"></i> </div>
                <div class="textbox"><span class='centerized-text'>Share your yourney with friends and the community.</span>
                </div>
            </div>

            <div class="list-item-container">
                <div class="i-container"> <i class="fa fa-star"></i> </div>
                <div class="textbox"><span class='centerized-text'>Rate each album on a scale of 1-5, to share your journey.</span>
                </div>
            </div>
        </div>

        <div class="final-message-container">
            What are you waiting for?&nbsp<a href="#" class="final-message-link">Sign up</a>&nbspto start sharing your
            life in music.
        </div>
        <br><br>
    </div>

    <script src="search.js"></script>
    <script src="index.js"></script>

    <script>
        function usernameAlreadyUsed(usernames, searchString) {
            for (var i = 0; i < usernames.length; i++) {
                if (usernames[i][0] === searchString) {
                    return true;
                }
            }
            return false;
        }

        function validateUser(usernames, passswords, searchUsername, searchPassword) {

            for (var i = 0; i < usernames.length; i++) {
                if (usernames[i][0] === searchUsername && passswords[i][0] === searchPassword) {
                    return true;
                }
            }
            return false;

        }

        function validatePassword(password) {
            var pattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
            return pattern.test(password);
        }

        var jsonString = '<?php echo $usernames_json; ?>';
        var usernames = JSON.parse(jsonString);

        var jsonString = '<?php echo $passwords_json; ?>';
        var passwords = JSON.parse(jsonString);

        const signForm = document.querySelector('.new-form');
        signForm.addEventListener('submit', function(event) {
            event.preventDefault();

            let isValid = true;

            const emailField = signForm.querySelector('input[name="email"]');
            const usernameField = signForm.querySelector('input[name="username"]');
            const passwordField = signForm.querySelector('input[name="password"]');

            const email = emailField.value.trim();
            const username = usernameField.value.trim();
            const password = passwordField.value.trim();

            const usernameError = document.getElementById('username-error');
            const emailError = document.getElementById('email-error');
            const passwordError = document.getElementById('password-error');

            if (email === '') {
                emailError.innerHTML = "! Please complete your email address";
                isValid = false;
            } else if (!(/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email))) {
                emailError.innerHTML = "! Invalid email address";
                isValid = false;
            } else {
                emailError.innerHTML = "";
            }

            if (username === '') {
                usernameError.innerHTML = "! Please complete your username";
                isValid = false;
            } else if (username.length < 4) {
                usernameError.innerHTML = "! Username must be a minimum of 4 characters"
                isValid = false;
            } else if (username.length > 12) {
                usernameError.innerHTML = "! Username must be a maximum of 12 characters";
                isValid = false;
            } else if (usernameAlreadyUsed(usernames, username)) {
                usernameError.innerHTML = "! Username already in use";
                isValid = false;
            } else {
                usernameError.innerHTML = "";
            }

            if (password === '') {
                passwordError.innerHTML = "! Please complete your password";
                isValid = false;
            } else if (password.length < 8) {
                passwordError.innerHTML = "! Password must be a minimum of 8 characters";
                isValid = false;
            } else if (!validatePassword(password)) {
                passwordError.innerHTML = "! At least one uppercase letter, one lowercase letter, one digit, and one special character";
                isValid = false;
            } else {
                passwordError.innerHTML = "";
            }


            if (isValid) {

                const xhr = new XMLHttpRequest();
                xhr.open('POST', 'php/signup.php', true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                const params = 'email=' + encodeURIComponent(email) +
                    '&username=' + encodeURIComponent(username) +
                    '&password=' + encodeURIComponent(password);

                xhr.send(params);
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === XMLHttpRequest.DONE) {
                        if (xhr.status === 200) {
                            window.location.href = "./about.php";
                        } else {
                            console.error(xhr.responseText);
                        }
                    }
                };
            }
        })


        const logForm = document.querySelector('.log-form');
        logForm.addEventListener('submit', function(event) {
            event.preventDefault();


            let isValid = true;

            const usernameField = logForm.querySelector('input[name="username"]');
            const passwordField = logForm.querySelector('input[name="password"]');

            const username = usernameField.value.trim();
            const password = passwordField.value.trim();

            if (username === "") {
                usernameField.style.boxShadow = "inset rgba(175,12,12,0.75) 0px 2px 2px, inset rgba(175,12,12,0.75) 0px 0px 0px 2px";
                isValid = false;
            } else if (!usernameAlreadyUsed(usernames, username)) {
                usernameField.style.boxShadow = "inset rgba(175,12,12,0.75) 0px 2px 2px, inset rgba(175,12,12,0.75) 0px 0px 0px 2px";
                isValid = false;
            } else {
                usernameField.style.boxShadow = "";
            }

            if (password === "") {
                passwordField.style.boxShadow = "inset rgba(175,12,12,0.75) 0px 2px 2px, inset rgba(175,12,12,0.75) 0px 0px 0px 2px";
                isValid = false;
            } else if (username !== "" && !validateUser(usernames, passwords, username, password)) {
                passwordField.style.boxShadow = "inset rgba(175,12,12,0.75) 0px 2px 2px, inset rgba(175,12,12,0.75) 0px 0px 0px 2px";
                usernameField.style.boxShadow = "inset rgba(175,12,12,0.75) 0px 2px 2px, inset rgba(175,12,12,0.75) 0px 0px 0px 2px";
                passwordField.value = "";
                isValid = false;
            } else {
                passwordField.style.boxShadow = "";
            }

            if (isValid) {

                const xhr = new XMLHttpRequest();
                xhr.open('POST', 'php/login.php', true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                const params = '&username=' + encodeURIComponent(username) +
                    '&password=' + encodeURIComponent(password);

                xhr.send(params);
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === XMLHttpRequest.DONE) {
                        if (xhr.status === 200) {
                            window.location.href = "./main.php";
                        } else {
                            console.error(xhr.responseText);
                        }
                    }
                };
            }
        })
    </script>
</body>

</html>
<?php

include("php/db_connect.php");

session_start();
$test = $_SESSION['id'];
$sql = "SELECT * FROM user WHERE id=$test";
$result = mysqli_query($conn, $sql);
$user = mysqli_fetch_assoc($result);


$sql = "SELECT username FROM user";
$result = mysqli_query($conn, $sql);
$usernames = mysqli_fetch_all($result);

$sql = "SELECT * FROM userfavalbum WHERE user_id = $test";
$result = mysqli_query($conn, $sql);
$favAlbums = mysqli_fetch_all($result);


$usernames_json = json_encode($usernames);



$sql = "SELECT ua.fav_order, a.* FROM userfavalbum ua JOIN album a ON ua.album_id = a.album_id WHERE ua.user_id = $test";
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
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image" href="./projectimgs/favicon-32x32.png">
    <link rel="stylesheet" href="editProfile.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Proxima+Nova&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>Orpheus</title>
</head>

<body>
    <div class="popup hidden" id="popup">
        <div class="popup-content">
            <div class="popup-content-container">
                <div class="main-message">
                    <span>Pick a favourite album</span>
                    <button class="popup-close-button"><i class="fa-thin fa-x">X</i></button>
                </div>

                <div class="search-container">
                    <section>
                        <input type="text" id="srchInput" placeholder="Search for albums">
                        <ul id="srchResults"></ul>
                    </section>
                </div>

            </div>
        </div>
    </div>

    <?php include("header.php") ?>




    <div class="body-container">

        <span class="header-message">Profile</span>

        <hr>

        <div class="main-content-division">
            <div class="edit-container">
                <form action="editProfile.php" class="edit-form">
                    <div class="form-divison"></div>

                    <label for="username">Username</label>
                    <input type="text" name="username" placeholder="<?php echo ($user['username']); ?>">
                    <div id="username-error" class="error-message"></div>

                    <div class="form-divison"></div>

                    <label for="email">Email</label>
                    <input type="email" name="email" placeholder="<?php echo ($user['email']); ?>">
                    <div id="email-error" class="error-message"></div>

                    <div class="form-divison"></div>

                    <label for="password">Password</label>
                    <input type="password" name="password">
                    <div id="password-error" class="error-message"></div>

                    <div class="form-divison"></div>


                    <label for="prof">Change Profile Picture</label>
                    <input type="file" name="file" class="custom-file-input">


                    <div class="form-divison"></div>


                    <div class="submit-back-container">
                        <button type="button" id="back-button">Back</button>
                        <input type="submit" value="Save Changes">
                    </div>


                    <div class="form-divison"></div>
                </form>



            </div>


            <div class="favourite-albums-container">
                <div class="span-container">
                    <span>Favourite Albums</span>
                </div>
                <div class="albums-container">

                    <?php
                    if ($album1) {
                    ?>
                        <a href="javascript:void(0)" style=" background-image: url(<?php echo ($album1['prof_pic']) ?>);" class="best-albums-poster"></a>
                    <?php
                    } else {
                    ?>
                        <a href="javascript:void(0)" class="best-albums-poster"></a>
                    <?php } ?>

                    <?php
                    if ($album2) {
                    ?>
                        <a href="javascript:void(0)" style=" background-image: url(<?php echo ($album2['prof_pic']) ?>);" class="best-albums-poster"></a>
                    <?php
                    } else {
                    ?>
                        <a href="javascript:void(0)" class="best-albums-poster"></a>
                    <?php } ?>

                    <?php
                    if ($album3) {
                    ?>
                        <a href="javascript:void(0)" style=" background-image: url(<?php echo ($album3['prof_pic']) ?>);" class="best-albums-poster"></a>
                    <?php
                    } else {
                    ?>
                        <a href="javascript:void(0)" class="best-albums-poster"></a>
                    <?php } ?>

                    <?php
                    if ($album4) {
                    ?>
                        <a href="javascript:void(0)"" style=" background-image: url(<?php echo ($album4['prof_pic']) ?>);" class="best-albums-poster"></a>
                    <?php
                    } else {
                    ?>
                        <a href="javascript:void(0)" class="best-albums-poster"></a>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>

    <script src="editFavAlbum.js"></script>
    <!-- <script src="editProfile.js"></script> -->

    <script>
        function usernameAlreadyUsed(usernames, searchString) {
            for (var i = 0; i < usernames.length; i++) {
                if (usernames[i][0] === searchString) {
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

        const editForm = document.querySelector(".edit-form");
        editForm.addEventListener('submit', function(event) {

            event.preventDefault();

            let changeEmail = false;
            let changeUser = false;
            let changePass = false;
            let changeProf = false;
            let isValid = true;


            const fileInput = editForm.querySelector('input[type="file"]');
            const emailField = editForm.querySelector('input[name="email"]');
            const usernameField = editForm.querySelector('input[name="username"]');
            const passwordField = editForm.querySelector('input[name="password"]');


            const email = emailField.value.trim();
            const username = usernameField.value.trim();
            const password = passwordField.value.trim();
            const selectedFile = fileInput.files[0];
            let fileName = null;

            const usernameError = document.getElementById('username-error');
            const emailError = document.getElementById('email-error');
            const passwordError = document.getElementById('password-error');

            if (selectedFile) {
                changeProf = true;
                fileName = selectedFile.name;
            }

            if (email === '') {
                changeEmail = false;
            } else if (!(/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email))) {
                emailError.innerHTML = "! Invalid email address";
                changeEmail = false;
                isValid = false;
            } else {
                changeEmail = true;
                emailError.innerHTML = "";
            }

            if (username === '') {
                changeUser = false;
            } else if (username.length < 4) {
                usernameError.innerHTML = "! Username must be a minimum of 4 characters"
                changeUser = false;
                isValid = false;
            } else if (username.length > 12) {
                usernameError.innerHTML = "! Username must be a maximum of 12 characters";
                changeUser = false;
                isValid = false;
            } else if (usernameAlreadyUsed(usernames, username)) {
                usernameError.innerHTML = "! Username already in use";
                changeUser = false;
                isValid = false;
            } else {
                usernameError.innerHTML = "";
                changeUser = true;
            }

            if (password === '') {
                changePass = false;
            } else if (password.length < 8) {
                passwordError.innerHTML = "! Password must be a minimum of 8 characters";
                changePass = false;
                isValid = false;
            } else if (!validatePassword(password)) {
                passwordError.innerHTML = "! At least one uppercase letter, one lowercase letter, one digit, and one special character";
                changePass = false;
                isValid = false;
            } else {
                passwordError.innerHTML = "";
                changePass = true;
            }


            if (isValid) {

                const xhr = new XMLHttpRequest();
                xhr.open('POST', 'php/edit.php', true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                const params = 'email=' + encodeURIComponent(email) +
                    '&username=' + encodeURIComponent(username) +
                    '&password=' + encodeURIComponent(password) +
                    '&fileName=' + encodeURIComponent(fileName) +
                    '&changeEmail=' + encodeURIComponent(changeEmail) +
                    '&changeUser=' + encodeURIComponent(changeUser) +
                    '&changePass=' + encodeURIComponent(changePass) +
                    '&changeProf=' + encodeURIComponent(changeProf);

                xhr.send(params);
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === XMLHttpRequest.DONE) {
                        if (xhr.status === 200) {
                            window.location.href = "editProfile.php";
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
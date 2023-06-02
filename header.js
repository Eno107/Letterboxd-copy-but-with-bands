
const searchButton = document.getElementById("header-icon-button");
const logButton = document.getElementById("button-42");
const navBar = document.getElementById("nav-bar");
const searchIcon = document.getElementById("search-icon");
const searchBar = document.createElement("input");
searchBar.classList.add("nav-search");
const test = document.getElementById('test');


var clickCount = 1;
searchButton.addEventListener('click', () => {

    if (!(clickCount % 2 == 0)) {
        navBar.removeChild(logButton);
        navBar.appendChild(test);
        test.classList.remove("hidden");
        searchIcon.className = "";
        searchIcon.classList.add("fa", "fa-times");
    } else {
        navBar.removeChild(test);
        test.classList.add("hidden");
        navBar.appendChild(logButton);
        searchIcon.className = "";
        searchIcon.classList.add("fa", "fa-search");
    }

    clickCount++;
});

const logPopupClose = document.querySelector(".log-popup-close-button");
const logPopup = document.getElementById("log-popup");


logButton.addEventListener('click', () => {
    logPopup.classList.remove("hidden");
})

logPopupClose.addEventListener("click", () => {
    logPopup.classList.add("hidden");
});


const logInput = document.getElementById("logInput");
const logList = document.getElementById("logResults");
const logAlbum = document.getElementById("log-album");
const closelog = document.querySelector(".log-album-close-button");
const stars = document.querySelectorAll('.star');
let rating = 0;

closelog.addEventListener("click", () => {
    logAlbum.classList.add("hidden");

    for (let i = 0; i < stars.length; i++) {
        stars[i].classList.remove('filled');
    }
    rating = 0;
})


stars.forEach((star, index) => {
    star.addEventListener('click', () => {
        rating = star.getAttribute('data-rating');

        for (let i = 0; i <= index; i++) {
            stars[i].classList.add('filled');
        }
        for (let i = index + 1; i < stars.length; i++) {
            stars[i].classList.remove('filled');
        }
    });
});

const logImg = document.getElementById("log-album-img");
const logName = document.getElementById("log-album-name");
const logAlbumButton = document.getElementById("log-album-log-button");

let album_id = null;

logInput.addEventListener("keyup", function () {
    const searchQuery = logInput.value;

    if (searchQuery.length > 0) {

        const xhr = new XMLHttpRequest();
        xhr.open("GET", "php/search_albums.php?query=" + encodeURIComponent(searchQuery), true);
        xhr.onload = function () {
            if (xhr.status === 200) {
                const albums = JSON.parse(xhr.responseText);
                logList.innerHTML = "";

                albums.forEach(function (album) {
                    const listItem = document.createElement("li");
                    // const albumLink = document.createElement("a");
                    listItem.style.paddingBottom = "5px";
                    listItem.style.paddingTop = "5px";
                    // albumLink.href = "#";
                    // albumLink.textContent = album.name;
                    // listItem.appendChild(albumLink);
                    listItem.textContent = album.name;
                    logList.appendChild(listItem);


                    listItem.addEventListener("click", () => {
                        logPopup.classList.add("hidden");
                        logAlbum.classList.remove("hidden");
                        album_id = album.album_id
                        logImg.setAttribute('src', album.prof_pic);
                        logName.innerHTML = album.name;
                    })
                });

                logList.style.display = "block";
            }
        };
        xhr.send();
    } else {
        logList.style.display = "none";
    }


});

logAlbumButton.addEventListener("click", () => {

    if (rating != 0) {
        const xhr = new XMLHttpRequest();
        xhr.open('POST', 'php/logAlbum.php', true);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        const params = 'album_id=' + encodeURIComponent(album_id) +
            '&rating=' + encodeURIComponent(rating);

        xhr.send(params);
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    logAlbum.classList.add("hidden");

                    for (let i = 0; i < stars.length; i++) {
                        stars[i].classList.remove('filled');
                    }
                    rating = 0;
                    location.reload();
                } else {
                    console.error(xhr.responseText);
                }
            }
        };


    }
})

document.addEventListener("click", function (event) {
    if (event.target !== logInput && event.target !== logList) {
        logList.style.display = "none";
    }
});
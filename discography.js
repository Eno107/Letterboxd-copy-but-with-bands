function convertTimeToSeconds(timeString) {
    var timeParts = timeString.split(":");
    var hours = 0;
    var minutes = 0;
    var seconds = 0;

    if (timeParts.length === 3) {
        hours = parseInt(timeParts[0]) || 0;
        minutes = parseInt(timeParts[1]) || 0;
        seconds = parseInt(timeParts[2]) || 0;
    } else if (timeParts.length === 2) {
        minutes = parseInt(timeParts[0]) || 0;
        seconds = parseInt(timeParts[1]) || 0;
    }

    return hours * 3600 + minutes * 60 + seconds;
}

var albumsContainer = document.querySelector('.albums-container');
var albumItems = Array.from(albumsContainer.getElementsByTagName('a'));




const ratButton = document.getElementById('rate-button');
let ratButtonCount = 0;
ratButton.addEventListener("click", () => {

    ratButtonCount++;

    albumItems.sort(function (a, b) {

        var albumA = a.getAttribute('data-rating');
        var albumB = b.getAttribute('data-rating');

        return albumA - albumB;

    });

    if (ratButtonCount % 2 == 0) {
        albumItems.reverse();
    }

    albumItems.forEach(function (albumItem) {
        albumsContainer.removeChild(albumItem);
    });
    albumItems.forEach(function (albumItem) {
        albumsContainer.appendChild(albumItem);
    });


});

const yearButton = document.getElementById("year-button");
let yearButtonCount = 0;
yearButton.addEventListener("click", () => {

    yearButtonCount++;

    albumItems.sort(function (a, b) {

        var albumA = a.getAttribute('data-year');
        var albumB = b.getAttribute('data-year');

        return albumA - albumB;
    });

    if (yearButtonCount % 2 == 0) {
        albumItems.reverse();
    }

    albumItems.forEach(function (albumItem) {
        albumsContainer.removeChild(albumItem);
    });
    albumItems.forEach(function (albumItem) {
        albumsContainer.appendChild(albumItem);
    });
});


const nameButton = document.getElementById("name-button");
let nameButtonCount = 0;
nameButton.addEventListener("click", () => {

    nameButtonCount++;

    albumItems.sort(function (a, b) {

        var albumA = a.getAttribute('data-name');
        var albumB = b.getAttribute('data-name');

        return albumA.localeCompare(albumB);
    });

    if (nameButtonCount % 2 == 0) {
        albumItems.reverse();
    }

    albumItems.forEach(function (albumItem) {
        albumsContainer.removeChild(albumItem);
    });
    albumItems.forEach(function (albumItem) {
        albumsContainer.appendChild(albumItem);
    });
});



const lenButton = document.getElementById("len-button");
let lenButtonCount = 0;
lenButton.addEventListener("click", () => {

    lenButtonCount++;

    albumItems.sort(function (a, b) {

        var albumA = a.getAttribute('data-length');
        var albumB = b.getAttribute('data-length');

        var albumALengthInSeconds = convertTimeToSeconds(albumA);
        var albumBLengthInSeconds = convertTimeToSeconds(albumB);

        return albumALengthInSeconds - albumBLengthInSeconds;
    });

    if (lenButtonCount % 2 == 0) {
        albumItems.reverse();
    }

    albumItems.forEach(function (albumItem) {
        albumsContainer.removeChild(albumItem);
    });
    albumItems.forEach(function (albumItem) {
        albumsContainer.appendChild(albumItem);
    });
});



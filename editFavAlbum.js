const favChange = document.querySelectorAll(".best-albums-poster");
const popupClose = document.querySelector(".popup-close-button");
const favPopup = document.getElementById("popup");
let containerIndex = 0;

favChange.forEach(function (albumContainer, index) {
    albumContainer.addEventListener("click", function () {
        containerIndex = index + 1;
        favPopup.classList.remove("hidden");
    });
});


popupClose.addEventListener("click", () => {
    favPopup.classList.add("hidden");
});


const backButton = document.getElementById("back-button");

backButton.addEventListener("click", () => {
    window.location.href = "./profile.php";
})



const srchInput = document.getElementById("srchInput");
const rsltList = document.getElementById("srchResults");



srchInput.addEventListener("keyup", function () {
    const searchQuery = srchInput.value;

    if (searchQuery.length > 0) {
        // Send an AJAX request to search-albums.php
        const xhr = new XMLHttpRequest();
        xhr.open("GET", "php/search_albums.php?query=" + encodeURIComponent(searchQuery), true);
        xhr.onload = function () {
            if (xhr.status === 200) {
                const albums = JSON.parse(xhr.responseText);
                rsltList.innerHTML = "";

                albums.forEach(function (album) {
                    const listItem = document.createElement("li");
                    const albumLink = document.createElement("a");
                    listItem.style.paddingBottom = "5px";
                    listItem.style.paddingTop = "5px";
                    albumLink.href = "#";
                    albumLink.textContent = album.name;
                    listItem.appendChild(albumLink);
                    rsltList.appendChild(listItem);

                    listItem.addEventListener("click", () => {
                    
                        const xhr = new XMLHttpRequest();
                        xhr.open('POST', 'php/addFavAlbum.php', true);
                        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                        const params = 'album_id=' + encodeURIComponent(album.album_id) +
                            '&containerIndex=' + encodeURIComponent(containerIndex); 
                        
                        xhr.send(params);
                        xhr.onreadystatechange = function () {
                            if (xhr.readyState === XMLHttpRequest.DONE) {
                                if (xhr.status === 200) {
                                    window.location.href = "editProfile.php";
                                } else {
                                    console.error(xhr.responseText);
                                }
                            }
                        };
                    })                    
                });

                rsltList.style.display = "block";
            }
        };
        xhr.send();
    } else {
        rsltList.style.display = "none";
    }
});

document.addEventListener("click", function (event) {
    if (event.target !== srchInput && event.target !== rsltList) {
        rsltList.style.display = "none";
    }
});
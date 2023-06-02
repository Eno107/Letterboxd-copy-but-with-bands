const searchInput = document.getElementById("searchInput");
const resultList = document.getElementById("searchResults");

searchInput.addEventListener("keyup", function () {
    const searchQuery = searchInput.value;

    if (searchQuery.length > 0) {
      
        const xhr = new XMLHttpRequest();
        xhr.open("GET", "php/search_albums.php?query=" + encodeURIComponent(searchQuery), true);
        xhr.onload = function () {
            if (xhr.status === 200) {
                const albums = JSON.parse(xhr.responseText);

                resultList.innerHTML = "";

                albums.forEach(function (album) {
                    const listItem = document.createElement("li");
                    const albumLink = document.createElement("a");
                    listItem.style.paddingBottom = "5px";
                    listItem.style.paddingTop = "5px";
                    albumLink.href = "album.php?id=" + encodeURIComponent(album.album_id);
                    albumLink.textContent = album.name;
                    listItem.appendChild(albumLink);
                    resultList.appendChild(listItem);
                });

                resultList.style.display = "block";
            }
        };
        xhr.send();
    } else {
        resultList.style.display = "none";
    }
});

document.addEventListener("click", function (event) {
    if (event.target !== searchInput && event.target !== resultList) {
        resultList.style.display = "none";
    }
});
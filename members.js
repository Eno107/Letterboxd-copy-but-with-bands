
const addFriendButtons = document.querySelectorAll(".member-add-friend");

addFriendButtons.forEach((button) => {
    button.addEventListener("click", () => {

        var user_id2 = button.getAttribute('data-id');

        const xhr = new XMLHttpRequest();
        xhr.open('POST', 'php/addFriend.php', true);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        const params = 'user_id2=' + encodeURIComponent(user_id2);

        xhr.send(params);
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    location.reload();
                } else {
                    console.error(xhr.responseText);
                }
            }
        };
    });
});

const removeFriendButton = document.querySelectorAll(".member-delete-friend");

removeFriendButton.forEach((button) => {
    button.addEventListener("click", () => {

        var user_id2 = button.getAttribute('data-id');

        const xhr = new XMLHttpRequest();
        xhr.open('POST', 'php/removeFriend.php', true);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        const params = 'user_id2=' + encodeURIComponent(user_id2);

        xhr.send(params);
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    location.reload();
                } else {
                    console.error(xhr.responseText);
                }
            }
        };
    });
});
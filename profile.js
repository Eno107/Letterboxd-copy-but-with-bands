
const favouriteContainer = document.getElementById("favourite-albums");
const recentContainer = document.getElementById("recent-activity");
const wishlistContainer = document.getElementById("soundtrack-wishlist");
const ratingsContainer = document.getElementById("ratings");


var articleElement = $("<span>").text("Dont forget to select your ").addClass("no-activity-text");
$("<a>").text("favourite albums!").attr("href", "editProfile.php").appendTo(articleElement);
articleElement.appendTo(favouriteContainer);


var element = $("<span>").text("Whenever you log albums ").addClass("no-activity-text");
$("<span>").text(" they will appear here.").addClass("no-activity-text").appendTo(element);
element.appendTo(recentContainer);


var element = $("<span>").text("Nothing is yet added to the soundlist. Click ").addClass("no-activity-text");
$("<a>").text("here").attr("href", "Allalbums.php").appendTo(element);
$("<span>").text(" to start browsing our choices").addClass("no-activity-text").appendTo(element);
element.appendTo(wishlistContainer);


var element = $("<span>").text("Nothing is rated yet.").addClass("no-activity-text");
element.appendTo(ratingsContainer);



const signOutButton = document.getElementById("sing-out-button");
const editProfileButton = document.getElementById("edit-profile-button");

signOutButton.addEventListener("click", () => {
    window.location.href = "index.php";
})

editProfileButton.addEventListener("click", () => {
    window.location.href = "editProfile.php";
})
const button = document.getElementById("create-account");
const createPopup = document.getElementById("popup");

button.addEventListener("click", () => {
    createPopup.classList.remove("hidden");
});

const closeBtn = document.querySelector(".new-close-button");

closeBtn.addEventListener("click", () => {
    createPopup.classList.add("hidden");
});


const nav = document.querySelector(".nav");
const logPopup = document.getElementById("log-in-popup")
const logButton = document.getElementById("log-in");
const closeLogButton = document.querySelector(".log-close-button")

logButton.addEventListener("click", () => {
    logPopup.classList.remove("hidden");
    nav.classList.add("hidden");
})

closeLogButton.addEventListener("click", () => {
    logPopup.classList.add("hidden");
    nav.classList.remove("hidden");
})



const joinButton = document.querySelector(".header-button-link");

joinButton.addEventListener("click", () => {
    createPopup.classList.remove("hidden");
})

const finalMessage = document.querySelector(".final-message-link");

finalMessage.addEventListener("click", () => {
    createPopup.classList.remove("hidden");
})







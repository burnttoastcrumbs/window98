let clockContainer = document.querySelector(".clock2");
let clock = clockContainer.querySelectorAll("span");

function updateTime() {
    let now = new Date();
    let hours = now.getHours();
    let minutes = now.getMinutes();

    let ampm = hours >= 12 ? "오후" : "오전";
    hours %= 12;
    hours = hours ? hours : 12; // 0시를 12시로 변경

    clock[0].textContent = ampm;
    clock[1].textContent = String(hours).padStart(2, "0");
    clock[2].textContent = ":";
    clock[3].textContent = String(minutes).padStart(2, "0");
}

// 초기 호출
updateTime();

// 1초마다 시간 업데이트
setInterval(updateTime, 1000);


const startupSound = "piano/startupSound.mp3";
const woof = "piano/woof.mp3";
document.querySelector(".startupSound").addEventListener("click", function() {
    const audio = new Audio(startupSound);
    audio.play();
});


document.querySelector(".woof").addEventListener("click",function(){
    const audio = new Audio(woof);
    audio.play();
});


let none = document.querySelectorAll(".none");
let block = document.querySelectorAll(".block");
let whiteBulb = document.querySelector(".white_lightbulb");
let blackBulb = document.querySelector(".black_lightbulb");
let balloon = document.querySelector(".balloon");

whiteBulb.addEventListener("click", function(){
    document.body.classList.remove("body_background");
    none.forEach(function(element) {
        element.classList.add("block");
        element.classList.remove("none");
    });

    block.forEach(function(element) {
        element.classList.add("none");
        element.classList.remove("block");
    });
    balloon.classList.add("noneBalloon");
    balloon.classList.remove("blockBalloon");
});

blackBulb.addEventListener("click", function(){
    document.body.classList.add("body_background");
    none.forEach(function(element) {
        element.classList.remove("block");
        element.classList.add("none");
    });

    block.forEach(function(element) {
        element.classList.remove("none");
        element.classList.add("block");
    });
});

document.querySelector(".balloon button").onclick = function (){
    this.parentNode.classList.remove("blockBalloon");
    this.parentNode.classList.add("noneBalloon");
}
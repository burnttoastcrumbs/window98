let myComputer = document.querySelector(".windowComcom");

document.querySelector(".comcom").addEventListener("click", function() {
    myComputer.classList.add("chosen");
    console.log(this);
    document.querySelector(".modal_box").style.display = "block";
});

document.querySelector(".windowComcom").addEventListener("click", function() {
    myComputer.classList.add("chosen");
    console.log(this);
    document.querySelector(".modal_box").style.display = "block";
});

document.querySelector(".cancel_btn").addEventListener("click", function() {
    myComputer.classList.remove("chosen");
    console.log(this);
    document.querySelector(".modal_box").style.display = "none";
});

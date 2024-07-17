let pianoKey = document.getElementsByClassName("pianoKey");
    let pianoSound= [];
    let note = "";

    cdefgabc = "다라마바사가나도";
    cdefgabcNum = [1,3,5,6,8,10,12,13];
    cdefgabcSound = [];

    doremi = "다라마다마다마라마바바마라바마바사마사마사바사가가사바가사다라마바사가가라마바사가나나마버서가나도도나가바나사도";
    doremiNum = [1,3,5,1,5,1,5,3,5,6,6,5,3,6,5,6,8,5,8,5,8,6,8,10,10,8,6,10,8,1,3,5,6,8,10,10,3,5,6,8,10,12,12,5,7,9,10,12,13,13,12,10,6,12,8,13];
    doremiSound = [];

    let scaleNum = [[0, 4, 7], [2, 6, 9], [4, 8, 11], [5, 9, 12], [2, 7, 11], [1, 4, 9], [3, 6, 11],
    [0, 3, 7], [2, 5, 9], [4, 7, 11], [5, 8, 12], [2, 7, 10], [0, 4, 9], [2, 6, 11],
    [0, 4, 7, 10], [2, 6, 9, 12], [2, 4, 8, 11], [3, 5, 9, 12], [2, 5, 7, 11], [1, 4, 7, 9], [3, 6, 9, 11],
    [1, 5, 8], [3, 7, 10], [3, 7, 10], [1, 6, 10], [3, 8, 12], [2, 5, 10], [2, 5, 10],
    [0, 5, 7], [1, 5, 8], [4, 9, 11], [5, 10, 12], [2, 7, 12], [3, 8, 12], [1, 5, 10],
    [0, 3, 6], [2, 5, 9, 12], [4, 7, 10], [4, 5, 9, 12], [1, 7, 10], [3, 9, 12], [2, 5, 8, 10]];

    console.log(note);

    let tmp = '';
    for (let i = 0; i < pianoKey.length; i++) {
    pianoSound.push('piano/FX_piano' + i + '.mp3');
    }

    for (let i = 0; i < pianoKey.length; i++) {
        pianoKey[i].addEventListener("click", pianoKeyClick);
    }
    function pianoKeyClick() {
        note += [this.innerHTML];
        console.log(note);

        let index = Array.from(this.parentNode.children).indexOf(this);
        let audio = new Audio(pianoSound[index]);
        audio.play();
        if(note == cdefgabc){
            alert(123);
        note = [];
        }
    }
    let scales = document.getElementsByClassName("songs");
    for (let i = 0; i < scales.length; i++) {
        scales[i].addEventListener("click", function() {
        let scale = scaleNum[i];

        let allPianoKeys = document.querySelectorAll('.pianoKey');
        allPianoKeys.forEach(key => key.classList.remove('paint'));
        
        for (let j = 0; j < scale.length; j++) {
            let audio = new Audio(`piano/FX_piano${scale[j]}.mp3`);
            audio.play();

            pianoKey[scale[j]].classList.add("paint");
        }
        console.log(scale);

        
    });
    }








let myComputer = document.querySelector(".windowComcom");
let thiss = document.querySelector(".this");

document.querySelector(".comcom").addEventListener("click", function() {
    myComputer.classList.add("chosen");
    thiss.classList.remove("chosen");
    document.querySelector(".modal_box").style.display = "block";
});

document.querySelector(".windowComcom").addEventListener("click", function() {
    myComputer.classList.add("chosen");
    thiss.classList.remove("chosen");
    document.querySelector(".modal_box").style.display = "block";
});

document.querySelector(".cancel_btn").addEventListener("click", function() {
    myComputer.classList.remove("chosen");
    thiss.classList.add("chosen");
    document.querySelector(".modal_box").style.display = "none";
});



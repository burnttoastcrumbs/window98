document.querySelector("form").addEventListener("submit", function(event) {

    let id = document.getElementById("id").value;
    let password = document.getElementById("password").value;

    if(id=="" && password==""){
        alert("아이디와 비밀번호를 적어주세요.");
        event.preventDefault();
    } else if(id==""){
        alert("아이디를 적어주세요.");
        event.preventDefault();
    } else if (password==""){
        alert("비밀번호를 적어주세요.");
        event.preventDefault();
    }

    console.log("id:", id);
    console.log("password:", password);
});

// 쿠키가 존재하는지 확인하는 함수
// function checkCookie(cookieName) {
//     var cookies = document.cookie.split(';');
//     for (var i = 0; i < cookies.length; i++) {
//         var cookie = cookies[i].trim();
//         if (cookie.startsWith(cookieName + '=')) {
//             return true; // 쿠키가 존재함
//         }
//     }
//     return false; // 쿠키가 존재하지 않음
// }
//
// // 페이지 로드 시 실행되는 함수
// window.onload = function() {
//     var idExists = checkCookie("id");
//     var rememberCheckbox = document.getElementsByName("remember")[0];
//
//     if (idExists) {
//         rememberCheckbox.checked = true; // 아이디 쿠키가 존재하는 경우 체크박스를 체크함
//     } else {
//         rememberCheckbox.checked = false; // 아이디 쿠키가 존재하지 않는 경우 체크박스를 체크하지 않음
//     }
// };
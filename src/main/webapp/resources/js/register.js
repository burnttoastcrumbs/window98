function validation() {
    let id = document.getElementById("id").value;
    let password = document.getElementById("password").value;
    let passwordCheck = document.getElementById("passwordCheck").value;
    let name = document.getElementById("name").value;
    let phoneNumber = document.getElementById("phoneNumber").value;
    let birthDate = document.getElementById("birthDate").value;
    let email = document.getElementById("EmailAdress").value;
    let gender = document.querySelector('input[name="gender"]:checked');

    if (id === "" || password === "" || passwordCheck === "" || name === "" || phoneNumber === "" || birthDate ==="" || email === "" || !gender) {
    alert("모든 칸을 입력해주세요.");
    return false;
}

    if (password !== passwordCheck) {
    alert("비밀번호가 일치하지 않습니다.");
    return false;
}

    if (birthDate.length === 8) {
        const year = birthDate.substring(0, 4);
        const month = birthDate.substring(4, 6);
        const day = birthDate.substring(6, 8);
        birthDate = year + "/" + month + "/" + day;
        document.getElementById("birthDate").value = birthDate;
    }

    window.location.href = 'window98'

    return true;
}








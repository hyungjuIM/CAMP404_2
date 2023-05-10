// 유효성 검사 여부를 기록할 객체 생성
const checkobj = {



    "newPw": false, // 영어, 숫자, 특수문자 6~30
    "newPwConfirm": false,
    "newNick": false, // 영어,숫자,한글 2~10 +중복검사
    "newTel": false, // (-) 제외 ->숫자만

};








// 비밀번호 확인 


const pwConfirmMessage = document.getElementById("pwConfirmMessage");
const pwMessage = document.getElementById("pwMessage");
const newPw = document.getElementById("newPw");
const newPwConfirm = document.getElementById("newPwConfirm");
newPw.addEventListener("input", function () {
    if (newPw.value.length == 0) {
        pwMessage.innerText = "영어, 숫자, 특수문자(!,@,#,-,_) 6~30글자 사이로 작성해주세요.";

        pwMessage.classList.remove("confirm", "error");
        checkobj.newPw = false; // 유효x 기록
        return;
    }


    // 입력 조건 만들기
    const pwExp = /^[\w\!\@\#\-\_]{6,30}/;
    if (pwExp.test(newPw.value)) {

        console.log("올바른 형식");
        pwMessage.classList.remove("error");
        pwMessage.innerText = "올바른 비밀번호 형식입니다.";
        pwMessage.classList.add("confirm");
        checkobj.newPw = true;

    } else {
        console.log("비밀번호입력에 실패했습니다.")
        pwMessage.innerText = "잘못된 비밀번호 형식입니다.";
        pwMessage.classList.add("error");
        pwMessage.classList.remove("confirm");
        checkobj.newPw = false;

    }
});
newPwConfirm.addEventListener("input", function () {
    if (newPw.value == newPwConfirm.value) {
        pwConfirmMessage.innerText = "비밀번호 일치";
        pwConfirmMessage.classList.remove("error");
        pwConfirmMessage.classList.add("confirm");
        checkobj.newPwConfirm = true;
    } else {
        console.log("비밀번호입력에 실패했습니다.")
        pwConfirmMessage.innerText = "비밀번호 불일치";
        pwConfirmMessage.classList.add("error");
        pwConfirmMessage.classList.remove("confirm");
        checkobj.newPwConfirm = false;
    }
})



// 닉네임 
//필요한 요소 : newNick, nicknameMessage
const newNick = document.getElementById("newNick");
const nicknameMessage = document.getElementById("nicknameMessage");
newNick.addEventListener("input", function () {
    if (newNick.value.length == 0) {
        nicknameMessage.innerText = "영어/숫자/한글 2~10글자 사이로 작성해주세요.";

        nicknameMessage.classList.remove("confirm", "error");
        checkobj.newNick = false; // 유효x 기록
        return;
    }
    // 정규식 생성
    const nickExp = /^[a-zA-Z0-9가-힣]{2,10}$/;
    if (nickExp.test(newNick.value)) {

        nicknameMessage.innerText = "사용 가능한 닉네임입니다.";
        nicknameMessage.classList.remove("error");
        nicknameMessage.classList.add("confirm");
        checkobj.newNick = true; // 유효o 기록
    } else {
        nicknameMessage.innerText = "닉네임 형식이 유효하지 않습니다";
        nicknameMessage.classList.add("error");
        nicknameMessage.classList.remove("confirm");

        checkobj.newNick = false; // 유효x 기록
    }
});

// 전화번호
// 필요 요소 : newTel, telMessage
const newTel = document.getElementById("newTel");
const telMessage = document.getElementById("telMessage");
newTel.addEventListener("input", function () {


    if (newTel.value.length == 0) {
        telMessage.innerText = "전화번호를 입력해주세요.(- 제외)";

        telMessage.classList.remove("confirm", "error");
        checkobj.newTel = false; // 유효x 기록
        return;
    }

    const telExp = /^0(1[01679]|2|[3-6][1-5]|70)\d{3,4}\d{4}$/;

    if (telExp.test(newTel.value)) {

        telMessage.innerText = "사용 가능한 전화번호입니다.";
        telMessage.classList.remove("error");
        telMessage.classList.add("confirm");
        checkobj.newTel = true; // 유효o 기록

    } else {
        telMessage.innerText = "올바른 전화번호가 아닙니다";
        telMessage.classList.add("error");
        telMessage.classList.remove("confirm");

        checkobj.newTel = false; // 유효x 기록
    }
});




function test() {
    console.log("로그아웃 버튼 누름");
    let url = "/CAMP404/myPage/logout";
    location.href = url;
}
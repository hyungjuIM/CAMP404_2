// 유효성 검사 여부를 기록할 객체 생성
const checkobj = {
    "memberName": false,
    "memberEmail": false,
    "memberID": false,
    "memberPw": false, // 영어, 숫자, 특수문자 6~30
    "memberPwConfirm": false,
    "memberNickname": false, // 영어,숫자,한글 2~10 +중복검사
    "memberTel": false, // (-) 제외 ->숫자만
    "cNumber": false,
    "sendEmail" : false
};

// 이메일 유효성 검사
const memberEmail = document.getElementById("memberEmail");
const emailMessage = document.getElementById("emailMessage");

memberEmail.addEventListener("input", function () {

    // 입력이 되지 않은 경우
    if (memberEmail.value.length == 0) {
        emailMessage.innerText = "메일을 받을 수 있는 이메일을 입력해 주세요";

        emailMessage.classList.remove("confirm", "error");
        checkobj.memberEmail = false; // 유효x 기록
        return;
    }

    const regExp = /^[\w\.\_\-]{4,}@[\w\-\_]+(\.\w+){1,3}$/;
    if (regExp.test(memberEmail.value)) {
        $.ajax({
            url: "emailDupCheck",
            //  필수 속성 url
            // 현재 주소 : /comm/member/signUp
            // 상대 경로 : /comm/member/emailDupCheck

            data: { "userEmail": memberEmail.value },
            // data속성 : 비동기 통신 시 서버로 전달할 값을 작성(JS 객체 형식)
            // -> 비동기 통신 시 input에 입력된 값을
            //   "memberEmail" 이라는 key 값(파라미터)으로 전달

            type: "GET", // 데이터 전달 방식 type

            success: function (result) {
                // 비동기 통신(ajax)가 오류 없이 요청/응답 성공한 경우

                // 매개변수 result : servlet에서 출력된 result 값이 담겨있음
                // console.log(result);

                if (result == 1) { // 중복 O
                    emailMessage.innerText = "이미 사용중인 이메일 입니다.";
                    emailMessage.classList.add("error");
                    emailMessage.classList.remove("confirm");
                    checkobj.memberEmail = false; // 유효 X 기록

                } else { // 중복 X
                    emailMessage.innerText = "사용 가능한 이메일 입니다.";
                    emailMessage.classList.add("confirm");
                    emailMessage.classList.remove("error");
                    checkobj.memberEmail = true; // 유효 O 기록
                }
            },

            error: function () {
                // 비동기 통신(ajax) 중 오류가 발생한 경우
                console.log("에러 발생");
            }

        });



    } else {
        emailMessage.innerText = "이메일 형식이 유효하지 않습니다.";
        emailMessage.classList.add("error");
        emailMessage.classList.remove("confirm");

        checkobj.memberEmail = false; // 유효 X 기록
    }

});


const sendBtn = document.getElementById("cBtn");
const cMessage = document.getElementById("emailCfMessage");

// 타이머에 사용될 변수
let checkInterval; // setInterval을 저장할 변수
let min = 4;
let sec = 59;

sendBtn.addEventListener("click", function () {

    if (checkobj.memberEmail) { // 유효한 이메일이 작성되어 있을 경우에만 메일 보내기

        $.ajax({
            url: "sendEmail",
            data: { "inputEmail": memberEmail.value },
            type: "GET",
            success: function (result) {
                console.log("이메일 발송 성공");
                console.log(result);

                // 인증 버튼이 클릭되어 정상적으로 메일이 보내졌음을 checkobj에 기록
                checkobj.sendEmail = true;

            },
            error: function () {
                console.log("이메일 발송 실패")
            }
        });


        // Mail 발송 Ajax 코드는 동작이 느림....
        // -> 메일은 메일대로 보내고, 타이머는 버튼이 클릭 되자 마자 바로 실행
        // --> ajax 코드가 비동기이기 때문에 메일이 보내지는 것을 기다리지 않고
        //      바로 다음 코드가 수행된다!!

        // 5분 타이머
        // setInerval(함수, 지연시간) : 지연시간이 지난 후 함수를 수행 (반복)

        cMessage.innerText = "5:00"; // 초기값 5분
        min = 4;
        sec = 59; // 분, 초 초기화

        cMessage.classList.remove("confirm");
        cMessage.classList.remove("error");

        // 변수에 저장해야지 멈출 수 있음
        checkInterval = setInterval(function () {
            if (sec < 10) sec = "0" + sec;
            cMessage.innerText = min + ":" + sec;

            if (Number(sec) === 0) {
                min--;
                sec = 59;
            } else {
                sec--;
            }

            if (min === -1) { // 만료
                cMessage.classList.add("error");
                cMessage.innerText = "인증번호가 만료되었습니다.";

                clearInterval(checkInterval); // checkInterval 반복을 지움
            }

        }, 1000); // 1초 지연 후 수행


        alert("인증번호가 발송되었습니다. 이메일을 확인해주세요.");
    }
});


// 인증번호 확인 클릭시에 대한 동작
const cNumber = document.getElementById("cNumber");
const cBtn = document.getElementById("cBtn");
// + cMessage, memberEmail 요소도 사용

cBtn.addEventListener("click", function () {

    // 1. 인증번호 받기 버튼이 클릭되어 이메일 발송되었는지 확인
    if (checkobj.sendEmail) {

        // 2. 입력된 인증번호가 6자리가 맞는지 확인
        if (cNumber.value.length == 6) { // 6자리 맞음

            $.ajax({
                url: "checkNumber",
                data: {
                    "cNumber": cNumber.value,
                    "inputEmail": memberEmail.value
                },
                type: "GET",
                success: function (result) {
                    console.log(result);
                    // 1 : 인증번호 일치 O, 시간 만족O
                    // 2 : 인증번호 일치 O, 시간 만족X
                    // 3 : 인증번호 일치 X

                    if (result == 1) {

                        clearInterval(checkInterval); // 타이머 멈춤     

                        cMessage.innerText = "인증되었습니다.";
                        cMessage.classList.add("confirm");
                        cMessage.classList.remove("error");

                    } else if (result == 2) {
                        alert("만료된 인증 번호 입니다.");

                    } else { // 3
                        alert("인증 번호가 일치하기 않습니다.");
                    }


                },

                error: function () {
                    console.log("이메일 인증 실패")
                }
            });



        } else { // 6자리 아님
            alert("인증번호를 정확하게 입력해주세요.");
            cNumber.focus();
        }

    } else { // 인증번호를 안받은 경우
        alert("인증번호 받기 버튼을 먼저 클릭해주세요.");
    }

});




// 비밀번호 확인 

// 필요한 요소 : memberPw, memberPwConfirm, pwMessage, pwConfirmMessage
const pwConfirmMessage = document.getElementById("pwConfirmMessage");
const pwMessage = document.getElementById("pwMessage");
const memberPw = document.getElementById("memberPw");
const memberPwConfirm = document.getElementById("memberPwConfirm");
memberPw.addEventListener("input", function () {
    if (memberPw.value.length == 0) {
        pwMessage.innerText = "영어, 숫자, 특수문자(!,@,#,-,_) 6~30글자 사이로 작성해주세요.";

        pwMessage.classList.remove("confirm", "error");
        checkobj.memberPw = false; // 유효x 기록
        return;
    }


    // 입력 조건 만들기
    const pwExp = /^[\w\!\@\#\-\_]{6,30}/;
    if (pwExp.test(memberPw.value)) {

        console.log("올바른 형식");
        pwMessage.classList.remove("error");
        pwMessage.innerText = "올바른 비밀번호 형식입니다.";
        pwMessage.classList.add("confirm");
        checkobj.memberPw = true;

    } else {
        console.log("비밀번호입력에 실패했습니다.")
        pwMessage.innerText = "잘못된 비밀번호 형식입니다.";
        pwMessage.classList.add("error");
        pwMessage.classList.remove("confirm");
        checkobj.memberPw = false;

    }
});
memberPwConfirm.addEventListener("input", function () {
    if (memberPw.value == memberPwConfirm.value) {
        pwConfirmMessage.innerText = "비밀번호 일치";
        pwConfirmMessage.classList.remove("error");
        pwConfirmMessage.classList.add("confirm");
        checkobj.memberPwConfirm = true;
    } else {
        console.log("비밀번호입력에 실패했습니다.")
        pwConfirmMessage.innerText = "비밀번호 불일치";
        pwConfirmMessage.classList.add("error");
        pwConfirmMessage.classList.remove("confirm");
        checkobj.memberPwConfirm = false;
    }
})

// 닉네임 
//필요한 요소 : memberNickname, nicknameMessage
const memberNickname = document.getElementById("memberNickname");
const nicknameMessage = document.getElementById("nicknameMessage");
memberNickname.addEventListener("input", function () {
    if (memberNickname.value.length == 0) {
        nicknameMessage.innerText = "영어/숫자/한글 2~10글자 사이로 작성해주세요.";

        nicknameMessage.classList.remove("confirm", "error");
        checkobj.memberNickname = false; // 유효x 기록
        return;
    }
    // 정규식 생성
    const nickExp = /^[a-zA-Z0-9가-힣]{2,10}$/;
    if (nickExp.test(memberNickname.value)) { // 유효한 경우


        // ****** 닉네임 중복 검사(ajax) 진행 예정 ******

        //     /community/member/nicknameDupCheck
        $.ajax({
            url: "nicknameDupCheck",  // 필수 작성 속성
            data: { "userNickname": memberNickname.value }, // 서버로 전달할 값(파라미터)
            type: "GET", // 데이터 전달 방식(기본값 GET)

            success: function (res) { // 비동기 통신 성공 시(에러 발생 X)

                // 매개변수 res : Servlet에서 응답으로 출력된 데이터가 저장

                if (res == 0) { // 닉네임 중복 X
                    nicknameMessage.innerText = "사용 가능한 닉네임 입니다.";
                    nicknameMessage.classList.add("confirm");
                    nicknameMessage.classList.remove("error");
                    checkobj.memberNickname = true; // 유효 O 기록

                } else { // 닉네임 중복 O
                    nicknameMessage.innerText = "이미 사용중인 닉네임 입니다.";
                    nicknameMessage.classList.add("error");
                    nicknameMessage.classList.remove("confirm");
                    checkobj.memberNickname = false; // 유효 O 기록
                }
            },

            error: function () { // 비동기 통신 중 에러가 발생한 경우
                console.log("에러 발생");
            }
        });



    } else {
        nicknameMessage.innerText = "닉네임 형식이 유효하지 않습니다.";
        nicknameMessage.classList.add("error");
        nicknameMessage.classList.remove("confirm");

        checkobj.memberNickname = false; // 유효 X 기록
    }

});

// 전화번호
// 필요 요소 : memberTel, telMessage
const memberTel = document.getElementById("memberTel");
const telMessage = document.getElementById("telMessage");
memberTel.addEventListener("input", function () {


    if (memberTel.value.length == 0) {
        telMessage.innerText = "전화번호를 입력해주세요.(- 제외)";

        telMessage.classList.remove("confirm", "error");
        checkobj.memberTel = false; // 유효x 기록
        return;
    }

    const telExp = /^0(1[01679]|2|[3-6][1-5]|70)\d{3,4}\d{4}$/;

    if (telExp.test(memberTel.value)) {

        telMessage.innerText = "사용 가능한 전화번호입니다.";
        telMessage.classList.remove("error");
        telMessage.classList.add("confirm");
        checkobj.memberTel = true; // 유효o 기록

    } else {
        telMessage.innerText = "올바른 전화번호가 아닙니다";
        telMessage.classList.add("error");
        telMessage.classList.remove("confirm");

        checkobj.memberTel = false; // 유효x 기록
    }
});

//id
const memberID = document.getElementById("memberID");
const idMessage = document.getElementById("idMessage");
memberID.addEventListener("input", function () {
    if (memberID.value.length == 0) {
        idMessage.innerText = "영어/숫자/한글 2~10글자 사이로 작성해주세요.";
        idMessage.classList.remove("confirm", "error");
        checkobj.memberID = false; // 유효x 기록
        return;
    }
    // 정규식 생성
    const idExp = /^[a-zA-Z0-9가-힣]{2,20}$/;
    if (idExp.test(memberID.value)) { // 유효한 경우


        // ****** 닉네임 중복 검사(ajax) 진행 예정 ******

        //     /community/member/nicknameDupCheck
        $.ajax({
            url: "IdDupCheck",  // 필수 작성 속성
            data: { "userId": memberID.value }, // 서버로 전달할 값(파라미터)
            type: "GET", // 데이터 전달 방식(기본값 GET)

            success: function (res) { // 비동기 통신 성공 시(에러 발생 X)

                // 매개변수 res : Servlet에서 응답으로 출력된 데이터가 저장

                if (res == 0) { // 닉네임 중복 X
                    idMessage.innerText = "사용 가능한 아이디 입니다.";
                    idMessage.classList.add("confirm");
                    idMessage.classList.remove("error");
                    checkobj.memberID = true; // 유효 O 기록

                } else { // 닉네임 중복 O
                    idMessage.innerText = "이미 사용중인 아이디 입니다.";
                    idMessage.classList.add("error");
                    idMessage.classList.remove("confirm");
                    checkobj.memberID = false; // 유효 O 기록
                }
            },

            error: function () { // 비동기 통신 중 에러가 발생한 경우
                console.log("에러 발생");
            }
        });



    } else {
        idMessage.innerText = "아이디 형식이 유효하지 않습니다.";
        idMessage.classList.add("error");
        idMessage.classList.remove("confirm");

        checkobj.memberID = false; // 유효 X 기록
    }

});

// 회원가입 버튼 클릭 시 유효성 검사가 완료 되었는지 확인하는 함수
function signUpValidate(){

    // checkObj에 있는 모든 속성을 반복 접근하여
    // false가 하나라도 있는 경우에는 form태그 기본 이벤트 제거

    let str;

    for( let key  in checkobj ){ // 객체용 향상된 for문

        // 현재 접근 중인 key의 value가 false인 경우
        if( !checkobj[key] ){ 

            switch(key){
            case "memberEmail":     str="이메일이"; break;
            case "memberPw":        str="비밀번호가"; break;    
            case "memberPwConfirm": str="비밀번호 확인이"; break;
            case "memberNickname":  str="닉네임이"; break;
            case "memberTel":       str="전화번호가"; break;
            }

            str += " 유효하지 않습니다.";

            alert(str);

            document.getElementById(key).focus();
            
            return false; // form태그 기본 이벤트 제거
        }
    }

    return true; // form태그 기본 이벤트 수행

}
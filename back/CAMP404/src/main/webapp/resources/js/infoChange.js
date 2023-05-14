// 유효성 검사 여부를 기록할 객체 생성
const checkobj = {



  
    "newNick": false, // 영어,숫자,한글 2~10 +중복검사
    "newTel": false, // (-) 제외 ->숫자만

};












// 닉네임 
//필요한 요소 : newNick, nicknameMessage
const newNick = document.getElementById("memberNickname");
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

        $.ajax({
            url: "newNicknameDupCheck",  // 필수 작성 속성
            data: { "userNick": newNick.value }, // 서버로 전달할 값(파라미터)
            type: "GET", // 데이터 전달 방식(기본값 GET)

            success: function (result) { // 비동기 통신 성공 시(에러 발생 X)

                // 매개변수 result : Servlet에서 응답으로 출력된 데이터가 저장

                if (result == 0) { // 닉네임 중복 X
                    console.log("가능");
                    nicknameMessage.innerText = "사용 가능한 닉네임 입니다.";
                    nicknameMessage.classList.add("confirm");
                    nicknameMessage.classList.remove("error");
                    checkobj.newNick = true; // 유효 O 기록

                } else { // 닉네임 중복 O
                    console.log("불가");
                    nicknameMessage.innerText = "이미 사용중인 닉네임 입니다.";
                    nicknameMessage.classList.add("error");
                    nicknameMessage.classList.remove("confirm");
                    checkobj.newNick = false; // 유효 O 기록
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

        checkobj.newNick = false; // 유효 X 기록
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
function infoValidate(){

    // checkObj에 있는 모든 속성을 반복 접근하여
    // false가 하나라도 있는 경우에는 form태그 기본 이벤트 제거

    let str;

    for( let key  in checkobj ){ // 객체용 향상된 for문

        // 현재 접근 중인 key의 value가 false인 경우
        if( !checkobj[key] ){ 

            switch(key){
            case "newTel":     str="전화번호가"; break;
            case "newNick":  str="닉네임이"; break;
           
            }

          
        

            str += " 유효하지 않습니다.";

            alert(str);

            document.getElementById(key).focus();
            
            return false; // form태그 기본 이벤트 제거
        }
    }
    return true; // form태그 기본 이벤트 수행

}


function test() {
    console.log("로그아웃 버튼 누름");
    let url = "/CAMP404/myPage/logout";
    location.href = url;
}
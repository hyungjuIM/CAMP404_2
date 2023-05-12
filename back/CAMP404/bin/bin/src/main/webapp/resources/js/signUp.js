// 유효성 검사 여부를 기록할 객체 생성
const checkobj = {
    "memberName" : false,
    "memberEmail" : false,
    "memberID" : false,
    "memberPw" : false, // 영어, 숫자, 특수문자 6~30
    "memberPwConfirm" : false,
    "memberNickname" : false, // 영어,숫자,한글 2~10 +중복검사
    "memberTel" : false, // (-) 제외 ->숫자만
    "cNumber" : false
 };

 // 이메일 유효성 검사
const memberEmail = document.getElementById("memberEmail");
const emailMessage = document.getElementById("emailMessage");

memberEmail.addEventListener("input", function(){

    // 입력이 되지 않은 경우
    if(memberEmail.value.length == 0){
        emailMessage.innerText ="메일을 받을 수 있는 이메일을 입력해 주세요";
        
        emailMessage.classList.remove("confirm","error");
        checkobj.memberEmail = false; // 유효x 기록
        return;
    }
   
    const regExp = /^[\w\.\_\-]{4,}@[\w\-\_]+(\.\w+){1,3}$/;
    if(regExp.test(memberEmail.value)){ // 유효o


                    emailMessage.innerText="사용 가능한 이메일입니다.";
                    emailMessage.classList.remove("error");
                    emailMessage.classList.add("confirm");
                    checkobj.memberEmail = true; // 유효o 기록
   
        
    }else{
        emailMessage.innerText ="이메일 형식이 유효하지 않습니다";
        emailMessage.classList.add("error");
        emailMessage.classList.remove("confirm");
        
        checkobj.memberEmail = false; // 유효x 기록
        
    }
})






// 비밀번호 확인 

// 필요한 요소 : memberPw, memberPwConfirm, pwMessage, pwConfirmMessage
const pwConfirmMessage = document.getElementById("pwConfirmMessage");
const pwMessage = document.getElementById("pwMessage");
const memberPw = document.getElementById("memberPw");
const memberPwConfirm = document.getElementById("memberPwConfirm");
memberPw.addEventListener("input",function(){
    if(memberPw.value.length == 0){
        pwMessage.innerText ="영어, 숫자, 특수문자(!,@,#,-,_) 6~30글자 사이로 작성해주세요.";

        pwMessage.classList.remove("confirm","error");
        checkobj.memberPw = false; // 유효x 기록
        return;
    }


// 입력 조건 만들기
const pwExp = /^[\w\!\@\#\-\_]{6,30}/;
if(pwExp.test(memberPw.value)){
    
            console.log("올바른 형식");
            pwMessage.classList.remove("error");
            pwMessage.innerText="올바른 비밀번호 형식입니다.";
            pwMessage.classList.add("confirm");
            checkobj.memberPw = true; 
      
}else{
    console.log("비밀번호입력에 실패했습니다.")
    pwMessage.innerText="잘못된 비밀번호 형식입니다.";
    pwMessage.classList.add("error");
    pwMessage.classList.remove("confirm");
    checkobj.memberPw = false; 

}
});
memberPwConfirm.addEventListener("input",function(){
    if(memberPw.value == memberPwConfirm.value){
        pwConfirmMessage.innerText="비밀번호 일치";
        pwConfirmMessage.classList.remove("error");
        pwConfirmMessage.classList.add("confirm");
            checkobj.memberPwConfirm = true; 
    }else{
        console.log("비밀번호입력에 실패했습니다.")
        pwConfirmMessage.innerText="비밀번호 불일치";
        pwConfirmMessage.classList.add("error");
        pwConfirmMessage.classList.remove("confirm");
    checkobj.memberPwConfirm = false; 
    }
})

// 닉네임 
//필요한 요소 : memberNickname, nicknameMessage
const memberNickname = document.getElementById("memberNickname");
const nicknameMessage = document.getElementById("nicknameMessage");
memberNickname.addEventListener("input", function(){
    if(memberNickname.value.length==0){
        nicknameMessage.innerText ="영어/숫자/한글 2~10글자 사이로 작성해주세요.";
        
        nicknameMessage.classList.remove("confirm","error");
        checkobj.memberNickname = false; // 유효x 기록
        return;
    }
    // 정규식 생성
    const nickExp = /^[a-zA-Z0-9가-힣]{2,10}$/;
    if(nickExp.test(memberNickname.value)){
      
                    nicknameMessage.innerText="사용 가능한 닉네임입니다.";
                    nicknameMessage.classList.remove("error");
                    nicknameMessage.classList.add("confirm");
                    checkobj.memberNickname= true; // 유효o 기록
        }else{
        nicknameMessage.innerText ="닉네임 형식이 유효하지 않습니다";
        nicknameMessage.classList.add("error");
        nicknameMessage.classList.remove("confirm");
        
        checkobj.memberNickname = false; // 유효x 기록
    }
});

// 전화번호
// 필요 요소 : memberTel, telMessage
const memberTel = document.getElementById("memberTel");
const telMessage = document.getElementById("telMessage");
memberTel.addEventListener("input",function(){


if(memberTel.value.length==0){
   telMessage.innerText ="전화번호를 입력해주세요.(- 제외)";
        
    telMessage.classList.remove("confirm","error");
    checkobj.memberTel = false; // 유효x 기록
    return;
}

const telExp =  /^0(1[01679]|2|[3-6][1-5]|70)\d{3,4}\d{4}$/;

if(telExp.test(memberTel.value)){
   
                telMessage.innerText="사용 가능한 전화번호입니다.";
                telMessage.classList.remove("error");
                telMessage.classList.add("confirm");
                checkobj.memberTel= true; // 유효o 기록
      
}else{
    telMessage.innerText ="올바른 전화번호가 아닙니다";
    telMessage.classList.add("error");
    telMessage.classList.remove("confirm");
    
    checkobj.memberTel = false; // 유효x 기록
}
});

//id
const memberID = document.getElementById("memberID");
const idMessage = document.getElementById("idMessage");
memberID .addEventListener("input", function(){
    if(memberID.value.length==0){
        idMessage.innerText ="영어/숫자/한글 2~10글자 사이로 작성해주세요.";
        idMessage.classList.remove("confirm","error");
        checkobj.memberID  = false; // 유효x 기록
        return;
    }
    // 정규식 생성
    const idExp = /^[a-zA-Z0-9가-힣]{2,20}$/;
    if(idExp.test(memberID .value)){
      
                    idMessage.innerText="사용 가능한 닉네임입니다.";
                    idMessage.classList.remove("error");
                    idMessage.classList.add("confirm");
                    checkobj.memberID = true; // 유효o 기록
        }else{
        idMessage.innerText ="닉네임 형식이 유효하지 않습니다";
        idMessage.classList.add("error");
        idMessage.classList.remove("confirm");
        
        checkobj.memberID  = false; // 유효x 기록
    }
});
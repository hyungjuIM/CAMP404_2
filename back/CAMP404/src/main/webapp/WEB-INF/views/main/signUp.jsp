<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/signUp.css" />
    <link rel="stylesheet" href="../css/signUp.css">

    <link rel="stylesheet" href="../css/reset.css">

    <!--폰트-->
    <script src="https://kit.fontawesome.com/606ab3dc62.js" crossorigin="anonymous"></script>
    <!--제이쿼리-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>


</head>

<body>
    <header>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
    </header>
    <main>
        <!--content-->
        <div id="content">
            <!--로고-->
            <div class="img_class"><img src="${pageContext.request.contextPath}/resources/images/CAMP404(기본).png"></div>

            <form action="signUp" method="POST" id="signUp-form" onsubmit="return signUpValidate()" autocomplete="off">

                <!--이름-->
                <div class="messageBox">
                

                    <div class="box int_name">
                        <input type="text" id="memberName" class="int" name="userName" maxlength="20" placeholder="이름을 입력해주세요">
                    </div>

                </div>




                <!--이메일-->
                <div class="messageBox">
                    <!-- <h3 class="join_title">
            <label for="email">본인확인 이메일</label>
        </h3> -->

                    <div class="int_email">
                        <input type="text" id="memberEmail" class="email" name="userEmail" maxlength="50" placeholder="이메일을 입력해주세요">

                        <button type="button" id="sendBtn">인증번호 받기</button>
                    </div>
                    <span class="signUp-message" id="emailMessage">메일을 받을 수 있는 이메일을 입력해주세요.</span>




                </div>

                <!--이메일 인증번호-->
                <div class="messageBox">
                    <!-- <h3 class="join_title">
            <label for="cNumber">인증번호</label>
        </h3> -->

                    <div class="int_cNumber">
                        <input type="text" id="cNumber" name="cNumber" class="emailCf" maxlength="20" placeholder="인증번호를 입력해주세요">
                        <button type="button" id="cBtn">인증번호 확인</button>
                    </div>

                    <span class="signUp-message" id="emailCfMessage">인증번호를 입력해주세요.</span>
                </div>




                <!--ID-->
                <div class="messageBox">
                    <!-- <h3 class="join_title">
                    <label for="id">아이디</label>
                        </h3> -->

                    <div class="int_id">
                        <input type="text" id="memberID" name="userId" class="id" maxlength="20" placeholder="아이디를 입력해주세요">
                       
                    </div>

                    <span class="signUp-message" id="idMessage">영어/숫자/한글 2~20글자 사이로 작성해주세요.</span>
                </div>




                <!--PW1-->
                <div class="messageBox">
                    <!-- <h3 class="join_title">
<label for ="pw1">비밀번호</label>
</h3> -->

                    <div class="box int_pass">
                        <input type="password" name="userPw" id="memberPw" class="int" maxlength="30" placeholder="비밀번호를 입력해주세요">
                    </div>
                    <span class="signUp-message" id="pwMessage">영어, 숫자, 특수문자(!,@,#,-,_) 6~30글자 사이로 작성해주세요.</span>
                </div>

                <!--PW2-->
                <div class="messageBox">
                    <!-- <h3 class="join_title">
<label for ="pw1">비밀번호 재확인</label>
</h3> -->

                    <div class="box int_pass_check">
                        <input type="password" id="memberPwConfirm" class="int" maxlength="30"
                            placeholder="비밀번호를 재입력해주세요">
                    </div>
                    <span class="signUp-message" id="pwConfirmMessage">비밀번호를 재입력해주세요</span>
                </div>





                <!--닉네임-->
                <div class="messageBox">
                    <!-- <h3 class="join_title">
                <label for ="nickNAme">닉네임</label>
            </h3> -->

                    <div class="int_nickName">
                        <input type="text" name="userNick" id="memberNickname" class="nick" maxlength="10" placeholder="닉네임을 입력해주세요">
                        
                    </div>

                    <span class="signUp-message" id="nicknameMessage">영어/숫자/한글 2~10글자 사이로 작성해주세요.</span>
                </div>










                <!--전화번호-->
                <div class="messageBox">
                    <!-- <h3 class="join_title">
                <label for ="phoneNo">휴대전화번호</label>
            </h3> -->

                    <div class="box int_mobile">
                        <input type="tel" name="userTel" id="memberTel" class="int" maxlength="12" placeholder="전화번호를 입력해주세요">
                    </div>
                    <span class="signUp-message" id="telMessage">전화번호를 입력해주세요.(- 제외)</span>
                </div>



                <!--주소-->
                <div class="messageBox">
                    <!-- <h3 class="join_title">
                <label for ="address">주소</label>
            </h3> -->

                    <div class="box int_address">
                        <input type="text" id="memberAddr" name="userAddress" class="int" maxlength="50" placeholder="주소를 입력해주세요">
                    </div>

                </div>

                <!--join Btn-->
                <div class="btn_area">
                    <button type="submit" id="btnJoin">회원가입</button>
                </div>




            </form>

        </div> <!-- content-->

    </main>
	<footer>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	</footer>
    <script src="${pageContext.request.contextPath}/resources/js/signUp.js"></script>
    <!--
회원가입 필요기능
=> 이름
=> 아이디(중복검사 & 형식유효한지 메시지 칸 필요)
=> 이메일(인증하기버튼 & 형식유효한지 메시지 칸 필요)
=> 이메일 인증번호(인증번호 유효한지 메시지칸 & 시간제한 필요)
=> 닉네임(중복검사 & 형식 유효메시지칸필요)
=> 전화번호(중복검사 & 형식 유효메시지칸필요)
=> 주소
-->


</body>

</html>
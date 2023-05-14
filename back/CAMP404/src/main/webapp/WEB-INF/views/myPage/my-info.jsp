<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>강의목차</title>

            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/my-info.css" />

            <!-- jQuery 라이브러리 추가(CDN) -->
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"
                integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

        </head>

        <body>
            <heder>
                <jsp:include page="/WEB-INF/views/common/header.jsp" />
            </heder>
            <main>
                <div data-inclued2="Q&ABtn" id="Q&ABtn"></div>
                <div class="myClass-container">
                    <nav class="myClass-nav-Area">
                        <div class="myClass-summary-container">
                            <!-- 안녕하세요 * 님 -->
                            <div class="myClass-hiUser">안녕하세요.<br>
                                <span class="userName">${loginMember.userName}</span> 님!
                            </div>
                            <!-- 나의강의장, 찜목록, 정보수정버튼 -->
                            <div class="myClass-content-container">
                                <div class="content-1"
                                    onclick="location.href='${pageContext.request.contextPath}/myPage/myClass';">
                                    <span class="myClass-span">나의 강의장</span>
                                    <i class="fa-solid fa-chevron-right fa-xm"></i>
                                </div>
                                <div class="content-1"
                                    onclick="location.href='${pageContext.request.contextPath}/myPage/favLecture';">
                                    <span class="myClass-span">나의 찜목록</span>
                                    <i class="fa-solid fa-chevron-right fa-xm"></i>
                                </div>
                                <div class="content-1"
                                    onclick="location.href='${pageContext.request.contextPath}/myPage/my-info';">
                                    <span class="myClass-span">회원정보 수정</span>
                                    <i class="fa-solid fa-chevron-right fa-xm"></i>
                                </div>

                            </div>
                            <!-- 로그아웃 -->
                            <button class="logout-btn" onclick="test()">로그아웃</button>
                        </div>
                    </nav>
                    <!-- ---------------------------------------------- -->
                    <!-- 회원정보 본문 -->
                    <form action="my-info" method="POST" class="content-Area" onsubmit="return infoValidate()"
                        autocomplete="off">
                        <!-- <div class="content-Area"> -->
                        <!-- h -->
                        <div class="title">
                            <h1>회원정보 수정</h1>
                        </div>

                        <!-- 닉네임 -->
                        <div class="changeInfo">
                            <!-- 인풋창 -->
                            <div class="input-area">
                                <input type="text" class="newInfo" name="userNick" id="memberNickname" maxlength="10"
                                    placeholder="새로운 닉네임을 입력해주세요">

                            </div>

                            <!-- 정규식메시지창 -->
                            <div class="message-area">
                                <span class="info-message" id="nicknameMessage">영어/숫자/한글 2~10글자 사이로 작성해주세요.</span>
                            </div>
                        </div>



                        <!-- 전화번호 -->
                        <div class="changeInfo">
                            <!-- 인풋창 -->
                            <div class="input-area">
                                <input type="text" class="newInfo" id="newTel" name="userTel" maxlength="12"
                                    placeholder="새로운 전화번호를 입력해주세요">

                            </div>
                            <!-- 정규식메시지창 -->
                            <div class="message-area">
                                <span class="info-message" id="telMessage">전화번호를 입력해주세요.(- 제외)</span>
                            </div>
                        </div>

                        <!-- 주소 -->
                        <div class="changeInfo">
                            <!-- 인풋창 -->
                            <div class="input-area">
                                <input type="text" class="newInfo" id="newAddr" name="userAddr" maxlength="50"
                                    placeholder="새로운 주소를 입력해주세요">
                            </div>
                            <!-- 정규식메시지창 -->
                            <div class="message-area"></div>
                        </div>

                        <!-- 변경 버튼 -->

                        <div class="btn_area">
                            <button type="submit" id="btnChange">회원정보수정</button>
                        </div>
                        <!-- </div> -->
                    </form>
                </div>
                <jsp:include page="/WEB-INF/views/common/Q&ABtn.jsp" />
            </main>

            <script src="${pageContext.request.contextPath}/resources/js/infoChange.js"></script>
        </body>


        </html>
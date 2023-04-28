<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>강의목차</title>

     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myClass.css" />
     
       <!-- jQuery 라이브러리 추가(CDN) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

</head>

<body>
    <heder>
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    </heder>
    <mian>

        <div class="myClass-container">
            <nav class="myClass-nav-Area">
                <div class="myClass-summary-container">
                    <!-- 안녕하세요 * 님 -->
                    <div class="myClass-hiUser">안녕하세요.<br>
                        <span class="userName">김철수</span> 님!
                    </div>
                    <!-- 나의강의장, 찜목록, 정보수정버튼 -->
                    <div class="myClass-content-container">
                        <div class="content-1" onclick="location.href='${pageContext.request.contextPath}/myPage/myClass';">
                            <span class="myClass-span">나의 강의장</span>
                            <i class="fa-solid fa-chevron-right fa-xm"></i>
                        </div>
                        <div class="content-1" onclick="location.href='/html/payMall.html';">
                            <span class="myClass-span">나의 찜목록</span>
                            <i class="fa-solid fa-chevron-right fa-xm"></i>
                        </div>
                        <div class="content-1" onclick="location.href='${pageContext.request.contextPath}/myPage/my-info';">
                            <span class="myClass-span">회원정보 수정</span>
                            <i class="fa-solid fa-chevron-right fa-xm"></i>
                        </div>

                    </div>
                    <!-- 로그아웃 -->
                    <button class="logout-btn">로그아웃</button>
                </div>
            </nav>
            <!-- ---------------------------------------------- -->
            <!-- 나의 정보 본문 -->
            <div class="myClass-content-area">
                <div class="myClass-over-navpart">
                    <div class="myClass-over-btn">
                        <span class="class-btn">전체 목록</span>
                        <span class="class-btn">수강중</span>
                        <span class="class-btn">수강완료</span>
                    </div>
                    <div class="class-mySearchBarWrapper">
                        <i class="fa-solid fa-magnifying-glass inputClass"></i>
                        <input class="class-searchBar" placeholder="나의 강의 찾기" />
                    </div>
                </div>

                <div class="myclass-under-contentpart">
                    <div class="content-container-1 content-css">
                        <div id="class-content-1" class="class1">
                            <img src="${pageContext.request.contextPath}/resources/images/3ddesign-parkjinbeom-coursecard.png">
                            <div class="class-index">
                                <span class="classIndex">JAVA</span>
                                <div class="class-index-content">감각의 시대에 살아남기 위한 크리에이티브, 기획력과 브랜딩</div>
                                <div class="goClass" onclick="location.href='${pageContext.request.contextPath}/myPage/classroom1';">
                                수강하기</div>
                            </div>
                        </div>
                        <div id="class-content-1" class="class1">
                            <img src="${pageContext.request.contextPath}/resources/images/3ddesign-parkjinbeom-coursecard.png">
                            <div class="class-index">
                                <span class="classIndex">JAVASCRIPT</span>
                                <div class="class-index-content">감각의 시대에 살아남기 위한 크리에이티브, 기획력과 브랜딩</div>
                                <div class="goClass">수강하기</div>
                            </div>
                        </div>
                        <div id="class-content-1" class="class2">
                            <img src="${pageContext.request.contextPath}/resources/images/3ddesign-parkjinbeom-coursecard.png">
                            <div class="class-index">
                                <span class="classIndex">DATABASE</span>
                                <div class="class-index-content">디비는 정말루 싫어요... 진짜 이거 왜있는거야</div>
                                <div class="goClass">수강하기</div>
                            </div>
                        </div>
                    </div>
                    <div class="content-container-2 content-css">
                        <div id="class-content-1" class="class1">
                            <img src="${pageContext.request.contextPath}/resources/images/3ddesign-parkjinbeom-coursecard.png">
                            <div class="class-index">
                                <span class="classIndex">JAVA</span>
                                <div class="class-index-content">감각의 시대에 살아남기 위한 크리에이티브, 기획력과 브랜딩</div>
                                <div class="goClass">수강하기</div>
                            </div>
                        </div>
                        <div id="class-content-1" class="class1">
                            <img src="${pageContext.request.contextPath}/resources/images/3ddesign-parkjinbeom-coursecard.png">
                            <div class="class-index">
                                <span class="classIndex">java</span>
                                <div class="class-index-content">감각의 시대에 살아남기 위한 크리에이티브, 기획력과 브랜딩</div>
                                <div class="goClass">수강하기</div>
                            </div>
                        </div>
                        <div id="class-content-1" class="class2">
                            <img src="${pageContext.request.contextPath}/resources/images/3ddesign-parkjinbeom-coursecard.png">
                            <div class="class-index">
                                <span>DATABASE</span>
                                <div class="class-index-content">디비는 정말루 싫어요... 진짜 이거 왜있는거야</div>
                                <div class="goClass">수강하기</div>
                            </div>
                        </div>

                    </div>
                </div>

                <nav class="page-nav">
                    <ul class="pagination">

                        <li><a href="">&lt;</a></li>
                        <li><a href="">1</a></li>
                        <li><a href="">2</a></li>
                        <li><a href="">3</a></li>
                        <li><a href="">4</a></li>
                        <li><a href="">5</a></li>
                        <li><a href="">&gt;</a></li>

                    </ul>
                </nav>
            </div>
        </div>
        <jsp:include page="/WEB-INF/views/common/Q&ABtn.jsp"/>
    </mian>


        <script src="${pageContext.request.contextPath}/resources/js/classContents.js"></script>

</body>


</html>
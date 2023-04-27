<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" />

    <script src="https://kit.fontawesome.com/606ab3dc62.js" crossorigin="anonymous"></script>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>



</head>

<body>





    <footer>
        <!--footer 전체 감싸는 영역-->
        <div class="footer_main">

            <!--footer 윗부분-->
            <div class="footer_content_up">

                <!--footer 윗부분 왼쪽에서 1번째-->
                <div class="footer_logo">
                    <!--로고 들어갈 자리-->
                    <img src="${pageContext.request.contextPath}/resources/images/CAMP404.png">

                    <p>최고에게 배우는 최상의 가치</p>

                    <!--글로벌버튼-->
                    <div class="button">
                        <a href="#" class="button_a">
                            <i class="fa-sharp fa-solid fa-globe"></i>
                            <p>Camp404 KR</p>
                            <i class="fa-solid fa-angle-down"></i>
                        </a>
                    </div>

                    <!--mouserover 시 열리는 부분-->
                    <ul class="menu">
                        <li><a href="#" class="menu_items">Camp404 KR</a></li>
                        <hr>
                        <li><a href="#" class="menu_items">Camp404 JP</a></li>
                        <hr>
                        <li><a href="#" class="menu_items">Camp404 US</a></li>

                    </ul>
                </div>



                <!--footer 윗부분 왼쪽에서2-->
                <ul class="footer_menu_1">
                
                    <p>COMPANY</p>
                    <li><a href="${pageContext.request.contextPath}/board/notice">공지사항</a></li>
                    <li><a href="${pageContext.request.contextPath}/myPage/myClass">채용안내</a></li>
                    <li><a href="#">FAQ</a></li>
                </ul>

                <!--footer 윗부분 왼쪽에서3-->
                <ul class="footer_menu_2">
                    <p>SERVICE</p>
                    <li><a href="#">이용약관</a></li>
                    <li><a href="#">개인정보처리방침</a></li>
                    <li><a href="#">환불규정</a></li>
                </ul>

                <!--footer 윗부분 왼쪽에서 4-->
                <div class="footer_customer">
                    <p>고객센터</p>
                    <a href="#">
                        <div class="footer_customer_box">
                            문의하기
                        </div>
                    </a>
                    <p>*주중 10~18시/주말 및 공휴일 제외</p>
                </div>
            </div>




            <!--footer 아랫부분-->
            <div class="footer_content_down">

                <!--footer 아랫부분 왼쪽-->
                <div class="footer_content_down_left">
                    <div>
                        <a href="#"><i class="fa-brands fa-facebook"></i></a>
                        <a href="#"><i class="fa-brands fa-instagram"></i></a>
                        <a href="#"><i class="fa-brands fa-twitter"></i></a>
                        <a href="#"><i class="fa-brands fa-youtube"></i></a>
                        <a href="#"><i class="fa-sharp fa-solid fa-blog"></i></a>
                    </div>
                </div>

                <!--footer 아랫부분 오른쪽-->
                <div class="footer_content_down_right">
                    <p>(주)CAMP404 공동대표 김민수, 이슬기, 이유정, 임형주, 정서윤 서울특별시 종로구 청와대로 1</p>
                    <p>02-1111-2222 camp404@camp.co.kr 개인정보책임관리자: 이슬기 사업자번호: 810-11-11658 통신판매업 신고번호: 제
                        2023-서울종로구-청와대: 제 1호</p>
                </div>
            </div>
        </div>
    </footer>

<%-- request에 message 속성이 존재하는 경우 alert창으로 해당 내용을 출력 --%>
<c:if test="${ !empty message }">
    <script>
        alert("${message}");
        // EL 작성 시 scope를 지정하지 않으면
        // page -> request -> session -> application 순서로 검색하여
        // 일치하는 속성이 있으면 출력
    </script>
</c:if> 


    <script src="${pageContext.request.contextPath}/resources/js/footer.js"></script>
</body>

</html>
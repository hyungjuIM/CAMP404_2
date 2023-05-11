<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


        <!DOCTYPE html>
        <html lang="ko">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">

            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" />
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css" />

            <!-- jQuery 라이브러리 추가(CDN) -->
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"
                integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
            <!-- fontawesome -->
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
                integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
                crossorigin="anonymous" referrerpolicy="no-referrer" />
            <!--font-->
            <script src="https://kit.fontawesome.com/606ab3dc62.js" crossorigin="anonymous"></script>
            <title>Camp404</title>
        </head>

        <body>
            <!-- 헤더 영역 -->
            <header>
                <jsp:include page="/WEB-INF/views/common/header.jsp" />
            </header>

            <main>
                <div data-inclued2="Q&ABtn" id="Q&ABtn"></div>
                <!-- 상단 슬라이드 이미지 영역 -->
                <div class="setSlideArea">
                    <div class="SlideImageContainer">
                        <div class="slideBtn">
                            <div class="leftBtn"><span>&lt;</span></div>
                            <div><span class="moveNum">1</span></div>
                            <div><span>&nbsp;/&nbsp;</span></div>
                            <div><span class="fixedNum">4</span></div>
                            <div class="rightBtn"><span>&gt;</span></div>
                        </div>
                        <ul class="slideImgHolder">
                            <li class="slideContainer">
                                <div class="slideTitle">
                                    <span class="slideTitle1-1">3.1 - 4.30</span>
                                    <span class="slideTitle1-2">환영합니다!</span>
                                    <span class="slideTitle1-3">CAMP 404</span>
                                </div>
                                <img class="innerImg" src="resources/images/slide1.png" />
                            </li>
                            <li class="slideContainer">
                                <div class="slideTitle">
                                    <span class="slideTitle2-1">4.1 - 4.30</span>
                                    <span class="slideTitle2-2">2번으로 넘어가라</span>
                                    <span class="slideTitle2-3">30만원 웰컴쿠폰 팩 증정!</span>
                                </div>
                                <img class="innerImg" src="resources/images/slide2.png" />
                            </li>
                            <li class="slideContainer">
                                <div class="slideTitle">
                                    <span class="slideTitle3-1">&lt;상시진행&gt;</span>
                                    <span class="slideTitle3-2">할인에는 끝이 없으니까!</span>
                                    <span class="slideTitle3-3">웰컴쿠폰 무제한 증정!</span>
                                </div>
                                <img class="innerImg" src="resources/images/slide3.png" />
                            </li>
                            <li class="slideContainer">
                                <div class="slideTitle">
                                    <span class="slideTitle4-1">4.1 - 4.30</span>
                                    <span class="slideTitle4-2">함께하실 강사님 및 연사님을 모집합니다!</span>
                                    <span class="slideTitle4-3">30만원 웰컴쿠폰 팩 증정!</span>
                                </div>
                                <img class="innerImg" src="resources/images/slide4.png" />
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- 상단 슬라이드 이미지 영역 -->

                <!-- 후기, 포트폴리오, 이벤트, 강사소개 -->
                <div class="infoArea">
                    <div class="infoUp">
                        <!-- BEST 후기 -->
                        <a href="#" class="infoBoxes">
                            <div class="innerUp">
                                <span>BEST 후기</span>
                                <div><i class="fa-solid fa-ellipsis-vertical"></i></div>
                            </div>
                            <div class="innerDown">
                                <span>수강생들의 찐 후기를 소개합니다.</span>
                            </div>
                        </a>
                        <!-- BEST 후기 -->

                        <!-- 포트폴리오 -->
                        <a href="#" class="infoBoxes">
                            <div class="innerUp">
                                <span>포트폴리오</span>
                                <div><i class="fa-solid fa-ellipsis-vertical"></i></div>
                            </div>
                            <div class="innerDown">
                                <span>수강생들이 직접 만든 완벽한 포트폴리오!</span>
                            </div>
                        </a>
                        <!-- 포트폴리오 -->

                        <!-- 이벤트 -->
                        <a href="#" class="infoBoxes">
                            <div class="innerUp">
                                <span>이벤트</span>
                                <div><i class="fa-solid fa-ellipsis-vertical"></i></div>
                            </div>
                            <div class="innerDown">
                                <span>&lt;CAMP 404/&gt;의 특별한 이벤트</span>
                            </div>
                        </a>
                        <!-- 이벤트 -->

                        <!-- 강사소개 -->
                        <a href="#" class="infoBoxes">
                            <div class="innerUp">
                                <span>강사 소개</span>
                                <div><i class="fa-solid fa-ellipsis-vertical"></i></div>
                            </div>
                            <div class="innerDown">
                                <span>&lt;CAMP 404/&gt;의 엄청난 강사님들을 소개합니다!</span>
                            </div>
                        </a>
                        <!-- 강사소개 -->
                    </div>
                    <!-- 후기, 포트폴리오, 이벤트, 강사소개 -->

                    <!-- 회원 수   및 수업 수 영역 -->
                    <div class="infoDown">

                        <!-- 가입 회원 수 -->
                        <div class="infoDown1">
                            <div class="aDown1">
                                <span>가입 회원 수</span>
                            </div>
                            <div class="aDown2">
                                <div class="aDown3">
                                    <span class="count_num1">0</span>
                                    <span>+</span>
                                </div>
                                <div class="aDown4">
                                    <div class="aDown5">
                                        <div>회원</div>
                                        <div>증가율</div>
                                    </div>
                                    <div class="aDown6">
                                        <span class="count_num2">0</span>
                                        <span>%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 가입 회원 수 -->

                        <!-- 오픈된 클래스 -->
                        <div class="infoDown2">
                            <div class="bDown1">
                                <span>오픈된 클래스</span>
                            </div>
                            <div class="bDown2">
                                <div class="bDown3">
                                    <span class="bDown4 count_num3">0</span>
                                    <span class="bDown5">+</span>
                                </div>
                            </div>
                        </div>
                        <!-- 오픈된 클래스 -->

                        <!-- 글로벌 포함 연사 수 -->
                        <div class="infoDown3">
                            <div class="bDown1">
                                <span>글로벌 포함 연사 수</span>
                            </div>
                            <div class="bDown2">
                                <div class="bDown3">
                                    <span class="bDown4 count_num4">0</span>
                                    <span class="bDown5">+</span>
                                </div>
                            </div>
                        </div>
                        <!-- 글로벌 포함 연사 수 -->
                    </div>
                    <!-- 회원 수 및 수업 수 영역 -->

                    <!-- BEST CLASS -->
                    <div class="classWrapper">
                        <div class="classTitle">
                            <div class="classTitle1">
                                <span>BEST</span>
                                <span>Class</span>
                            </div>
                            <a href="#" class="classTitle2">더보기&nbsp;<i class="fa-solid fa-angles-right"></i></a>
                        </div>
                        <div class="classDescription">
                            <c:forEach var="bestClass" items="${bestClassList}">
                                <c:if test="${bestClass.categoryNo == 1}">
                                    <div class="classItem">
                                        <a href="${contextPath}class/class3" class="imgArea">
                                            <img src="resources/images/6.png">
                                        </a>
                                        <div class="textArea">
                                            <div class="topText">
                                                <div class="mainText">
                                                    <a href="#" class="mainText1">SQL</a>
                                                    <a href="#" class="mainText2">수강가능</a>
                                                </div>
                                                <div class="likeBtn"><i class="fa-solid fa-heart"></i></i></div>
                                            </div>
                                            <a href="${contextPath}class/class3">
                                                <div class="subText">${bestClass.lectureName}<br></div>
                                                <div class="tutorTitle">${bestClass.lectureNo}</div>
                                            </a>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                    <!-- BEST CLASS -->

                    <!-- 중간 광고 -->
                    <div class="middleAddArea">
                        <div class="middleAddItems">
                            <div class="middleCheckEvent">
                                <div class="Middle_SlideBtn">
                                    <div class="Middle_leftBtn"><span>&lt;</span></div>
                                    <div><span class="Middle_moveNum">1</span></div>
                                    <div><span>&nbsp;/&nbsp;</span></div>
                                    <div><span class="Middle_fixedNum">3</span></div>
                                    <div class="Middle_rightBtn"><span>&gt;</span></div>
                                </div>
                            </div>
                        </div>
                        <ul class="midde_SlideImgHolder">
                            <li class="midde_SlideContainer">
                                <img class="midde_InnerImg" src="resources/images/middleSlide1.png" />
                            </li>
                            <li class="midde_SlideContainer">
                                <img class="midde_InnerImg" src="resources/images/middleSlide2.png" />
                            </li>
                            <li class="midde_SlideContainer">
                                <img class="midde_InnerImg" src="resources/images/middleSlide3.png" />
                            </li>
                        </ul>

                    </div>
                    <!-- 중간 광고 -->

                    <!-- FRONT-END class -->
                    <div class="classWrapper">
                        <div class="classTitle">
                            <div class="classTitle1">
                                <span>FRONT-END</span>
                                <span>Class</span>
                            </div>
                            <a href="#" class="classTitle2">더보기&nbsp;<i class="fa-solid fa-angles-right"></i></a>
                        </div>
                        <div class="classDescription">
                            <c:forEach var="frontClass" items="${frontClassList}">
                                <c:if test="${frontClass.categoryNo == 2}">
                                    <div class="classItem">
                                        <a href="${contextPath}class/class3" class="imgArea">
                                            <img src="resources/images/class1.png">
                                        </a>
                                        <div class="textArea">
                                            <div class="topText">
                                                <div class="mainText">
                                                    <a href="#" class="mainText1">JAVA</a>
                                                    <a href="#" class="mainText2">수강가능</a>
                                                </div>
                                                <div class="likeBtn"><i class="fa-solid fa-heart"></i></i></div>
                                            </div>
                                            <a href="${contextPath}class/class3">
                                                <div class="subText">${frontClass.lectureName}<br></div>
                                                <div class="tutorTitle">${frontClass.lectureNo}</div>
                                            </a>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                    <!-- FRONT-END class -->

                    <!-- BACK-END class -->
                    <div class="classWrapper">
                        <div class="classTitle">
                            <div class="classTitle1">
                                <span>BACK-END</span>
                                <span>Class</span>
                            </div>
                            <a href="#" class="classTitle2">더보기&nbsp;<i class="fa-solid fa-angles-right"></i></a>
                        </div>
                        <div class="classDescription">
                            <c:forEach var="backClass" items="${backClassList}">
                                <c:if test="${backClass.categoryNo == 3}">
                                    <div class="classItem">
                                        <a href="${contextPath}class/class3" class="imgArea">
                                            <img src="resources/images/class4.png">
                                        </a>
                                        <div class="textArea">
                                            <div class="topText">
                                                <div class="mainText">
                                                    <a href="#" class="mainText1">JAVA</a>
                                                    <a href="#" class="mainText2">수강가능</a>
                                                </div>
                                                <div class="likeBtn"><i class="fa-solid fa-heart"></i></i></div>
                                            </div>
                                            <a href="${contextPath}class/class3">
                                                <div class="subText">${backClass.lectureName}<br></div>
                                                <div class="tutorTitle">${backClass.lectureNo}</div>
                                            </a>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                    <!-- BACK-END class -->

                    <!-- 중간 광고2 -->
                    <div class="middleAddArea2">
                        <div class="middleAddItems2">
                            <div class="middleCheckEvent2">
                                <div class="Middle_SlideBtn2">
                                    <div class="Middle_leftBtn2"><span>&lt;</span></div>
                                    <div><span class="Middle_moveNum2">1</span></div>
                                    <div><span>&nbsp;/&nbsp;</span></div>
                                    <div><span class="Middle_fixedNum2">3</span></div>
                                    <div class="Middle_rightBtn2"><span>&gt;</span></div>
                                </div>
                            </div>
                        </div>
                        <ul class="midde_SlideImgHolder2">
                            <li class="midde_SlideContainer2">
                                <img class="midde_InnerImg2" src="resources/images/middleSlide1.png" />
                            </li>
                            <li class="midde_SlideContainer2">
                                <img class="midde_InnerImg2" src="resources/images/middleSlide2.png" />
                            </li>
                            <li class="midde_SlideContainer2">
                                <img class="midde_InnerImg2" src="resources/images/middleSlide3.png" />
                            </li>
                        </ul>

                    </div>
                    <!-- 중간 광고2 -->

                    <!-- DATABASE class -->
                    <div class="classWrapper">
                        <div class="classTitle">
                            <div class="classTitle1">
                                <span>DataBase</span>
                                <span>Class</span>
                            </div>
                            <a href="#" class="classTitle2">더보기&nbsp;<i class="fa-solid fa-angles-right"></i></a>
                        </div>
                        <div class="classDescription">
                            <c:forEach var="dataBase" items="${dataBaseClass}">
                                <c:if test="${dataBase.categoryNo == 4}">
                                    <div class="classItem">
                                        <a href="${contextPath}class/class3" class="imgArea">
                                            <img src="resources/images/class7.png">
                                        </a>
                                        <div class="textArea">
                                            <div class="topText">
                                                <div class="mainText">
                                                    <a href="#" class="mainText1">JAVA</a>
                                                    <a href="#" class="mainText2">수강가능</a>
                                                </div>
                                                <div class="likeBtn"><i class="fa-solid fa-heart"></i></i></div>
                                            </div>
                                            <a href="${contextPath}class/class3">
                                                <div class="subText">${dataBase.lectureName}<br></div>
                                                <div class="tutorTitle">${dataBase.lectureNo}</div>
                                            </a>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                    <!-- DATABASE class -->

                    <!-- OS class -->
                    <div class="classWrapper">
                        <div class="classTitle">
                            <div class="classTitle1">
                                <span>Operation System</span>
                                <span>Class</span>
                            </div>
                            <a href="#" class="classTitle2">더보기&nbsp;<i class="fa-solid fa-angles-right"></i></a>
                        </div>
                        <div class="classDescription">
                            <c:forEach var="osClass" items="${osClassList}">
                                <c:if test="${osClass.categoryNo == 5}">
                                    <div class="classItem">
                                        <a href="${contextPath}class/class3" class="imgArea">
                                            <img src="resources/images/class10.png">
                                        </a>
                                        <div class="textArea">
                                            <div class="topText">
                                                <div class="mainText">
                                                    <a href="#" class="mainText1">JAVA</a>
                                                    <a href="#" class="mainText2">수강가능</a>
                                                </div>
                                                <div class="likeBtn"><i class="fa-solid fa-heart"></i></i></div>
                                            </div>
                                            <a href="${contextPath}class/class3">
                                                <div class="subText">${osClass.lectureName}<br></div>
                                                <div class="tutorTitle">${osClass.lectureNo}</div>
                                            </a>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <jsp:include page="/WEB-INF/views/common/Q&ABtn.jsp" />
            </main>

            <footer>
                <jsp:include page="/WEB-INF/views/common/footer.jsp" />
            </footer>


            <script src="${pageContext.request.contextPath}/resources/js/index.js"></script>
        </body>

        </html>
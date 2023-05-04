<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> -->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="/css/login.css"> -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/frontClass.css" />
    <!-- fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
        integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- jQuery 라이브러리 추가(CDN) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>


    <title>정말 쉬운 자바_진짜최종_ㅁㄴㅇㄹ.java</title>
</head>

<body>
    <!-- 헤더 영역 -->
    <header>
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    </header>

    <main>
        <div class="c_mainContainer">
            <div class="c_topImage">
                <img src="${pageContext.request.contextPath}/resources/images/testImg1.png" />
            </div>
            <div class="c_topItems">
                <div class="c_topCategory">
                    <span>Back-END &gt; JAVA</span>
                </div>
                <div class="c_topTitle">
                    <span>정말 쉬운 자바_진짜최종_ㅁㄴㅇㄹ.java</span>
                </div>
                <div class="c_topTeacher">
                    <span>월급루팡 김코딩</span>
                </div>
                <ul class="c_topIcons">
                    <li class="c_topIcon1_container">
                        <div class="c_topIcon">
                            <i class="fa-solid fa-repeat fa-lg"></i>
                        </div>
                        <div class="c_topIconTitle">
                            <span>평생시청</span>
                        </div>
                    </li>
                    <li class="c_topIcon2_container">
                        <div class="c_topIcon">
                            <i class="fa-solid fa-play fa-lg"></i>
                        </div>
                        <div class="c_topIconTitle">
                            <span>수강가능</span>
                        </div>
                    </li>
                    <li class="c_topIcon3_container">
                        <div class="c_topIcon">
                            <i class="fa-sharp fa-solid fa-ticket fa-lg"></i>
                        </div>
                        <div class="c_topIconTitle">
                            <span>쿠폰할인</span>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="c_topPriceContainer">
                <div class="c_topPrice">
                    <s class="c_price1">239,000</s>
                    <span class="c_price2">최대<span class="c_price3">12%</span>할인</span>
                    <span class="c_price4">209,000원~</span>
                </div>
                <div class="c_topBuyContainer">
                    <div class="c_topBuybtn1">
                    </div>
                    <a class="c_topBuybtn" href="#">
                        <span class="c_topbtnText">최저가 구매하기</span>
                    </a>
                    <div class="c_topBuybtn2">
                        <div class="likeBtn"><i class="fa-solid fa-heart fa-xl"></i></i></div>
                    </div>
                </div>
            </div>
            <div class="c_topDetails">
                <div class="c_leftDetail">
                    <div class="c_leftTitle"><span>클래스 상세 정보</span></div>
                    <ul class="c_leftMoreDetail">
                        <li class="c_leftinfo">
                            <span class="c_leftinfo1">영상오픈</span>
                            <span class="c_leftinfo2">2022년 22월 22일 22시</span>
                        </li>
                        <li class="c_leftinfo">
                            <span class="c_leftinfo1">난이도</span>
                            <span class="c_leftinfo2">입문</span>
                        </li>
                        <li class="c_leftinfo">
                            <span class="c_leftinfo1">강의분량</span>
                            <span class="c_leftinfo2">총 50회 강의</span>
                        </li>
                        <li class="c_leftinfo">
                            <span class="c_leftinfo1">강의자료</span>
                            <span class="c_leftinfo2">포함</span>
                        </li>
                    </ul>
                    <div class="c_leftBtnContainer">
                        <a href="#" class="c_leftbtn">
                            <span>50강</span>
                        </a>
                        <a href="#" class="c_leftbtn">
                            <span>JAVA</span>
                        </a>
                        <a href="#" class="c_leftbtn">
                            <span>Back-end</span>
                        </a>
                        <a href="#" class="c_leftbtn">
                            <span>코딩</span>
                        </a>
                    </div>
                </div>
                <div class="c_rightDetail">
                    <div class="c_rightTop">
                        <div>
                            <span class="c_rightTop2">최대<span class="c_rightTop3">12%</span>할인</span>
                        </div>
                        <div class="c_rightTop4">
                            <s class="c_rightTop5">239,000</s>
                            <span class="c_rightTop6">209,000원~</span>
                        </div>
                    </div>
                    <div class="c_rightMiddle">
                        <div class="c_rightMiddle0">
                            <div class="c_rightMiddle1">쿠폰할인</div>
                            <div class="c_rightMiddle2">최대
                                <span class="c_rightMiddle3">30,000원</span>
                            </div>
                            <div class="c_rightMiddle4"><i class="fa-solid fa-chevron-up fa-rotate-90 fa-2xs"></i></div>
                        </div>

                        <div class="c_rightMiddle_Under_Container couponHidden">
                            <div class="c_rightMiddle_Under1">
                                <span class="c_rightMiddle_Under2">쿠폰할인</span>
                                <div class="c_rightMiddle_Under3"><i class="fa-solid fa-xmark"></i></div>
                            </div>
                            <div class="c_rightMiddle_Under4">
                                <div class="c_rightMiddle_Under5">
                                    <span class="c_rightMiddle_Under6">30,000원 할인</span>
                                    <span class="c_rightMiddle_Under7">최대 3만원 할인</span>
                                    <span class="c_rightMiddle_Under8">발급기간 2023년 05월 17일 23:59 까지</span>
                                </div>
                                <div class="c_rightMiddle_Under9"><i class="fa-solid fa-arrow-down"></i></div>
                            </div>
                            <div class="c_rightMiddle_Under4">
                                <div class="c_rightMiddle_Under5">
                                    <span class="c_rightMiddle_Under6">30,000원 할인</span>
                                    <span class="c_rightMiddle_Under7">최대 3만원 할인</span>
                                    <span class="c_rightMiddle_Under8">발급기간 2023년 05월 17일 23:59 까지</span>
                                </div>
                                <div class="c_rightMiddle_Under9"><i class="fa-solid fa-arrow-down"></i></div>
                            </div>
                            <div class="c_rightMiddle_Under10">
                                <span>쿠폰은 정해진 수량에 따라 선착순 마감될 수 있습니다.</span><br>
                                <span>발급된 쿠폰의 상세정보는 마이페이지 > 쿠폰에서 확인 가능합니다.</span>
                            </div>
                        </div>
                    </div>
                    <div class="c_rightBottom">
                        <div class="c_rightBottom0">
                            <div class="c_rightBottom1">신규회원할인</div>
                            <div class="c_rightBottom2">최대
                                <span class="c_rightBottom3">10,000원</span>
                            </div>
                            <div class="c_rightBottom4"><i class="fa-solid fa-chevron-up fa-rotate-90 fa-2xs"></i></div>
                        </div>
                        <div class="c_rightBottom_Under_Container couponHidden">
                            <div class="c_rightMiddle_Under1">
                                <span class="c_rightMiddle_Under2">쿠폰할인</span>
                                <div class="c_rightMiddle_Under3"><i class="fa-solid fa-xmark"></i></div>
                            </div>
                            <div class="c_rightMiddle_Under4">
                                <div class="c_rightMiddle_Under5">
                                    <span class="c_rightMiddle_Under6">30,000원 할인</span>
                                    <span class="c_rightMiddle_Under7">최대 3만원 할인</span>
                                    <span class="c_rightMiddle_Under8">발급기간 2023년 05월 17일 23:59 까지</span>
                                </div>
                                <div class="c_rightMiddle_Under9"><i class="fa-solid fa-arrow-down"></i></div>
                            </div>
                            <div class="c_rightMiddle_Under4">
                                <div class="c_rightMiddle_Under5">
                                    <span class="c_rightMiddle_Under6">30,000원 할인</span>
                                    <span class="c_rightMiddle_Under7">최대 3만원 할인</span>
                                    <span class="c_rightMiddle_Under8">발급기간 2023년 05월 17일 23:59 까지</span>
                                </div>
                                <div class="c_rightMiddle_Under9"><i class="fa-solid fa-arrow-down"></i></div>
                            </div>
                            <div class="c_rightMiddle_Under10">
                                <span>쿠폰은 정해진 수량에 따라 선착순 마감될 수 있습니다.</span><br>
                                <span>발급된 쿠폰의 상세정보는 마이페이지 > 쿠폰에서 확인 가능합니다.</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="c_classLine">
                <div class="c_classLineTitle">
                    <div class="c_innerText1">클래스 소개</div>
                    <div class="c_innerText2">연사 소개</div>
                    <div class="c_innerText3">클래스 특징</div>
                    <div class="c_innerText4">커리큘럼</div>
                    <div class="c_innerText5">추천</div>
                </div>
            </div>
            <div class="c_classContent1">
                <div class="c_classLineInner">
                    <div>
                        <span>
                            소개영상
                            <br>
                            월급루팡 김코딩
                        </span>
                    </div>
                    <div>
                        <iframe width="800" height="450" src="https://www.youtube.com/embed/7fy1eFEkrpU"
                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                            allowfullscreen></iframe>
                    </div>
                    <div>
                        <span>
                            "20개의 커리큘럼을 통해서"
                            <br>
                            코딩의 기초 개념들을 정리하고
                            <br>
                            이를 포트폴리오에 그대로 적용해 볼 수 있도록
                            <br>
                            Java와 관련된 예제 위주로
                            <br>
                            직접 실습하게 될 것입니다.”
                        </span>
                    </div>
                    <div class="c_separator"></div>
                    <div>
                        <span>
                            코딩은 1도 모른다구요?
                            <br>
                            월급루팡 김코딩과 함께라면,
                            <br>
                            나도 어엿한 '개발자'!
                        </span>
                    </div>
                    <div>
                        <img src="${pageContext.request.contextPath}/resources/images/img1.png" width="800px" />
                    </div>
                    <div>
                        <span>
                            웹 코딩! 선택이 아닌 필수라는 말에도,
                            <br>
                            몸값을 올릴 수 있다는 이야기에도
                            <br>
                            '어렵다'는 이유로 포기했었나요?
                            <br>
                            <br>
                            19년차 개발자이자 디자이너,
                            <br>
                            '1분코딩' 유준모 연사의
                            <br>
                            온라인 클래스와 함께라면 다릅니다!
                        </span>
                    </div>
                    <div>
                        <img src="${pageContext.request.contextPath}/resources/images/img1.png" width="800px" />
                    </div>
                    <div>
                        <span>
                            코딩 언어인 HTML, CSS,
                            <br>
                            Java Script의 기본 문법부터
                            <br>
                            당장에 포트폴리오로 사용해도
                            <br>
                            손색없는 웹페이지 예제 제작,
                            <br>
                            Canvas와 3D 고급 기능까지
                            <br>
                            쉽고 재미있게 알려주는 강의!
                            <br>
                            <br>
                            여러분의 능력과 커리어를 동시에
                            <br>
                            높여줄 웹 디자인 클래스를
                            <br>
                            지금 바로 확인해보세요.
                        </span>
                    </div>
                    <div class="c_separator"></div>
                    <div>
                        <span>
                            개발자/디자이너
                            <br>
                            1분코딩의 포트폴리오
                        </span>
                    </div>
                    <div class="확인용">
                        <img src="${pageContext.request.contextPath}/resources/images/img1.png" width="400px" />
                        <img src="${pageContext.request.contextPath}/resources/images/img1.png" width="400px" />
                    </div>
                    <div class="확인용">
                        <img src="${pageContext.request.contextPath}/resources/images/img1.png" width="400px" />
                        <img src="${pageContext.request.contextPath}/resources/images/img1.png" width="400px" />
                    </div>
                    <div class="확인용1">
                        <div>월급루팡 김코딩의<br>포트폴리오 둘러보기&gt;</div>
                    </div>
                </div>
            </div>
            <div class="c_classContent2">
                <div class="c_classLineInner">
                    <div>
                        <div>
                            <span>
                                개발자 월급루팡 김코딩의
                                <br>
                                클래스가 특별한 이유
                            </span>
                        </div>
                        <div>
                            <span>
                                코딩 입문부터 포트폴리오까지 담아낸
                                <br>
                                국내 유일무이 웹 디자인 올인원 클래스
                            </span>
                        </div>
                    </div>
                    <div>
                        <span>지금까지의 웹 디자인 강의는
                            <br>
                            코딩 문법만 알려주는 기초 강의,
                            <br>
                            혹은 사전 지식이 있어야만
                            <br>
                            수강할 수 있는 고급 예제 제작
                            <br>
                            커리큘럼이 대부분이었습니다.
                            <br>
                            <br>
                            이번 클래스는
                            <br>

                            코딩을 전혀 모르는 입문자도
                            <br>
                            웹 개발에 입문할 수 있도록
                            <br>
                            기본 문법부터 고급 기능,
                            <br>
                            포트폴리오 제작까지 모두 포함된
                            <br>
                            20개의 알짜배기 커리큘럼으로 구성했습니다.
                            <br>
                            <br>
                            툴과 코딩 문법에 대한 이해부터
                            <br>
                            다양한 실전 예제 구현과 응용까지
                            <br>
                            모두 담아낸 웹 디자인 온라인 클래스,
                            <br>
                            콜로소가 유일합니다.
                        </span>
                    </div>
                </div>
            </div>
            <div class="c_classContent1">
                <div class="c_classLineInner">
                    <div>
                        <span>이번 클래스에서는 총 3가지의</span>
                        <span>실전 웹페이지 예제를 직접 제작해 봅니다.</span>
                    </div>
                    <div class="확인용">
                        <div>
                            <iframe width="250" src="https://www.youtube.com/embed/7fy1eFEkrpU"
                                title="YouTube video player" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                allowfullscreen></iframe>
                        </div>
                        <div>
                            <iframe width="250" src="https://www.youtube.com/embed/7fy1eFEkrpU"
                                title="YouTube video player" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                allowfullscreen></iframe>
                        </div>
                        <div>
                            <iframe width="250" src="https://www.youtube.com/embed/7fy1eFEkrpU"
                                title="YouTube video player" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
            <div class="c_classContent2">
                <div class="c_classLineInner">
                    <div>
                        <span>
                            김코딩
                            <br>
                            월급루팡
                        </span>
                    </div>
                    <div>
                        <span>
                            안녕하세요, 김코딩입니다.
                            <br>
                            <br>
                            저는 콘텐츠 크리에이터, 개발자,
                            <br>
                            디자이너로 활동하고 있고
                            <br>
                            <br>
                            특히 유튜브, 페이스북 채널
                            <br>
                            '1분코딩'을 운영하며 누구나
                            <br>
                            쉽게 배울 수 있는 인터랙티브 웹 코딩,
                            <br>
                            개발 관련 콘텐츠를 만들고 있습니다.
                            <br>
                            <br>
                            지금까지 제가 진행했던 코딩 강의들이
                            <br>
                            섹션 별 스킬 위주였다면,
                            <br>
                            이번 클래스는 기초부터 응용포인트,
                            <br>
                            웹사이트 포트폴리오 제작까지의
                            <br>
                            전 과정을 녹여냈는데요.
                            <br>
                            <br>
                            수업을 모두 듣고 나면, 여러분도
                            <br>
                            '나는 코딩할 줄 아는 디자이너다!'라고
                            <br>
                            당당하게 말할 수 있게 될 거예요.
                        </span>

                    </div>
                </div>
            </div>
            <div class="c_classContent1">
                <div class="확인용2">
                    <div class="확인용3">프로필이미지</div>
                    <div class="확인용4">
                        <span>개발자/디자이너 1분코딩</span>
                        <div class="확인용6"></div>
                        <span>
                            현) 콘텐츠제작/웹개발 1인 기업
                            <br>
                            스튜디오밀 운영
                        </span>
                    </div>
                    <div class="확인용5">
                        <span>이력 더보기</span>
                        <div class="확인용7"></div>
                        <span>
                            현) 유튜브/페이스북 1분코딩 운영
                            <br>
                            전) 웹 에이전시 디자이너 재직
                            <br>
                            전) 한글과컴퓨터 개발자 겸 디자이너 재직
                            <br>
                            <br>
                            국민대/제주대 웹 개발 특강
                            <br>
                            오프라인 강의 경력
                            <br>
                            다수 기업체 출강
                        </span>
                    </div>
                </div>
            </div>
            <div class="c_classContent2">
                <div class="c_classLineInner">
                    <div>
                        <span>클래스 특징</span>
                    </div>
                    <div class="확인용8">
                        <div>
                            <span>
                                쉽고 빠르게 습득하는
                                <br>
                                웹 페이지 제작의 기본기
                            </span>
                            <br>
                            <br>
                            <span>
                                웹 개발 공부를 이어나감과 동시에 원하는 웹페이지를 스스로 제작할 수
                                <br>
                                있도록, 최신 문법의 HTML, CSS, JavaScript 기본기를 습득해봅니다.
                            </span>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/images/img1.png" width="400px" />
                        </div>
                    </div>
                    <div class="확인용8">
                        <div>
                            <span>
                                쉽고 빠르게 습득하는
                                <br>
                                웹 페이지 제작의 기본기
                            </span>
                            <br>
                            <br>
                            <span>
                                웹 개발 공부를 이어나감과 동시에 원하는 웹페이지를 스스로 제작할 수
                                <br>
                                있도록, 최신 문법의 HTML, CSS, JavaScript 기본기를 습득해봅니다.
                            </span>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/images/img1.png" width="400px" />
                        </div>
                    </div>
                    <div class="확인용8">
                        <div>
                            <span>
                                쉽고 빠르게 습득하는
                                <br>
                                웹 페이지 제작의 기본기
                            </span>
                            <br>
                            <br>
                            <span>
                                웹 개발 공부를 이어나감과 동시에 원하는 웹페이지를 스스로 제작할 수
                                <br>
                                있도록, 최신 문법의 HTML, CSS, JavaScript 기본기를 습득해봅니다.
                            </span>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/images/img1.png" width="400px" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="c_classContent1">
                <div class="c_classLineInner">
                    <div class="확인용8">
                        <div>
                            <span>
                                나의 부족함을 채워주는
                                <br>
                                연사의 1:1 코칭
                            </span>
                            <br>
                            <br>
                            <span>
                                개인 프로젝트에 대한 평가와 QnA를 동시에 진행함으로써,
                                <br>
                                나의 실력을 몇 단계 이상 업그레이드할 수 있습니다.
                            </span>
                            <br>
                            <br>
                            <span>
                                코칭권 구매 후 개인 포트폴리오와 클래스 관련 질문 3개를 보내주시면
                                <br>
                                연사님이 직접 피드백을 해 드립니다.
                                <br>
                                코칭권 구매 후 개인 포트폴리오와 클래스 관련 질문 3개를 보내주시면
                                <br>
                                연사님이 직접 피드백을 해 드립니다.
                                <br>
                            </span>
                            <br>
                            <br>
                            <span>* 1:1 코칭권은 클래스 + 코칭권 패키지를 구매한 분들에 한해 적용됩니다.</span>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/images/img1.png" width="400px" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="c_classContent2">
                <div class="c_classLineInner">
                    <div>
                        <span>클래스 구성</span>
                        <span>이런 것을 배웁니다</span>
                    </div>
                    <div class="확인용9">
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/images/img1.png" width="300px" />
                            <div>
                                <span>
                                    웹 개발 3종 세트
                                    <br>
                                    기초 익히기
                                </span>
                            </div>
                            <div>
                                <span>
                                    HTML, CSS, JavaScript의 기초를 최신 문법과
                                    <br>
                                    기술들을 바탕으로 재미있게 배워봅니다.
                                </span>
                            </div>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/images/img1.png" width="300px" />
                            <div>
                                <span>
                                    웹 개발 3종 세트
                                    <br>
                                    기초 익히기
                                </span>
                            </div>
                            <div>
                                <span>
                                    HTML, CSS, JavaScript의 기초를 최신 문법과
                                    <br>
                                    기술들을 바탕으로 재미있게 배워봅니다.
                                </span>
                            </div>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/images/img1.png" width="300px" />
                            <div>
                                <span>
                                    웹 개발 3종 세트
                                    <br>
                                    기초 익히기
                                </span>
                            </div>
                            <div>
                                <span>
                                    HTML, CSS, JavaScript의 기초를 최신 문법과
                                    <br>
                                    기술들을 바탕으로 재미있게 배워봅니다.
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="확인용9">
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/images/img1.png" width="300px" />
                            <div>
                                <span>
                                    웹 개발 3종 세트
                                    <br>
                                    기초 익히기
                                </span>
                            </div>
                            <div>
                                <span>
                                    HTML, CSS, JavaScript의 기초를 최신 문법과
                                    <br>
                                    기술들을 바탕으로 재미있게 배워봅니다.
                                </span>
                            </div>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/images/img1.png" width="300px" />
                            <div>
                                <span>
                                    웹 개발 3종 세트
                                    <br>
                                    기초 익히기
                                </span>
                            </div>
                            <div>
                                <span>
                                    HTML, CSS, JavaScript의 기초를 최신 문법과
                                    <br>
                                    기술들을 바탕으로 재미있게 배워봅니다.
                                </span>
                            </div>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/images/img1.png" width="300px" />
                            <div>
                                <span>
                                    웹 개발 3종 세트
                                    <br>
                                    기초 익히기
                                </span>
                            </div>
                            <div>
                                <span>
                                    HTML, CSS, JavaScript의 기초를 최신 문법과
                                    <br>
                                    기술들을 바탕으로 재미있게 배워봅니다.
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="c_classContent1">
                <div class="c_classLineInner">

                </div>
            </div>
            <div class="c_classContent2">
                <div class="c_classLineInner">

                </div>
            </div>
            <div class="c_classContent1">
                <div class="c_classLineInner">

                </div>
            </div>
            <div class="c_classContent2">
                <div class="c_classLineInner">

                </div>
            </div>
            <div class="c_classContent1">
                <div class="c_classLineInner">

                </div>
            </div>
            <div class="c_classContent2">
                <div class="c_classLineInner">

                </div>
            </div>
        </div>




    </main>

    <footer>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </footer>
    <script src="${pageContext.request.contextPath}/resources/js/frontClass.js"></script>
</body>

</html>
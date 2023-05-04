<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/notice.css" />
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" /> --%>

    <!-- jQuery 라이브러리 추가(CDN) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
        integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>

<body>
    <header>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
    </header>
    <main>
        <div data-inclued2="Q&ABtn" id="Q&ABtn"></div>



        <section class="notice">
            <div class="page-title">

                <img src="${pageContext.request.contextPath}/resources/images/CAMP404(가로).png" alt="">

            </div>

            <!-- board seach area -->
            <div class="board">
                <div class="container1">
                    <h3>공지사항</h3>
                </div>
                <div class="nothing"></div>

                <div class="container2">
                    <div class="search-area">

                        <form action="">
                            <fieldset>
                                <button type="submit" id="search-btn" class="fa-solid fa-magnifying-glass"></button>
                                <input type="text" id="query" name="query" placeholder="검색어를 입력해주세요">

                                <!-- 검색 버튼 -->

                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
            </div>


            <!-- board list area -->
            <div id="board-list">
                <div class="container3">
                    <table class="board-table">
                        <thead>
                            <tr>
                                <th scope="col" class="th-num">번호</th>
                                <th scope="col" class="th-title">제목</th>
                                <th scope="col" class="th-date">등록일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>10</td>
                                <th><a href="#!">어리다고 놀리지말아요 수줍어서 말도 못하고</a></th>
                                <td>2023.04.02</td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <th><a href="#!">어리다고 놀리지말아요 수줍어서 말도 못하고</a></th>
                                <td>2023.04.02</td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <th><a href="#!">어리다고 놀리지말아요 수줍어서 말도 못하고</a></th>
                                <td>2023.04.02</td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <th><a href="#!">어리다고 놀리지말아요 수줍어서 말도 못하고</a></th>
                                <td>2023.04.02</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <th><a href="#!">어리다고 놀리지말아요 수줍어서 말도 못하고</a></th>
                                <td>2023.04.02</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <th><a href="#!">어리다고 놀리지말아요 수줍어서 말도 못하고</a></th>
                                <td>2023.04.02</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <th><a href="#!">어리다고 놀리지말아요 수줍어서 말도 못하고</a></th>
                                <td>2023.04.02</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <th>
                                    <a href="#!">[전체공지]CAMP404결제 안내사항</a>
                                    <p>테스트</p>
                                </th>
                                <td>2023.04.12</td>
                            </tr>

                            <tr>
                                <td>2</td>
                                <th><a href="#!">널사랑하지않아~ 이게 내 진심인거야</a></th>
                                <td>2023.04.11</td>
                            </tr>

                            <tr>
                                <td>1</td>
                                <th><a href="#!">어리다고 놀리지말아요 수줍어서 말도 못하고</a></th>
                                <td>2023.04.02</td>
                            </tr>
                        </tbody>
                    </table>

                    <nav class="page-nav">
                        <ul class="pagination">

                            <li><a href="">&lt;
                                </a>
                            </li>
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

        </section>

<jsp:include page="/WEB-INF/views/common/Q&ABtn.jsp"/>
    </main>
    
	<footer>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	</footer>
<%--    
나중에 JS 추가 시 내용만 변경해서 사용하세요
 <script src="${pageContext.request.contextPath}/resources/js/JS파일명.js"></script> --%>
</body>

</html>
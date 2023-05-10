<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!-- map에 저장된 값을 각각 변수에 저장 -->
<c:forEach var="boardType" items="${boardTypeList}">
	<c:if test="${boardCode == boardType.boardCode}">
		<c:set var="boardName" value="${boardType.boardName}"/>
	</c:if>
</c:forEach>

<c:set var="pagination" value="${map.pagination}" />
<c:set var="boardList" value="${map.boardList}" />


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${boardName}</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/notice.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/boardCss/boardList-style.css" />
	
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

		
        <%-- 검색을 진행한 경우 key, query를 쿼리스트링 형태로 저장한 변수 생성 --%>
        <c:if test="${!empty param.key}">
            <c:set var="sURL" value="&key=${param.key}&query=${param.query}" />
        </c:if>

        <section class="board-list">
                
 		<div class="page-title">
			<img src="${pageContext.request.contextPath}/resources/images/CAMP404(가로).png" alt="">
		</div>

            <h1 class="board-name">${boardName}</h1>

            <c:if test="${!empty param.key}">
                <h3 style="margin-left:30px;"> "${param.query}" 검색 결과  </h3>
            </c:if>



            <div class="list-wrapper">
                <table class="list-table">
                    
                    <thead>
                        <tr>
                            <th scope="col" class="th-num">글번호</th>
                            <th scope="col" class="th-title">제목</th>
                            <th scope="col" class="th-writer">작성자</th>
                            <th scope="col" class="th-date">작성일</th>
                            <th scope="col" class="th-num">조회수</th>
                        </tr>
                    </thead>

                    <tbody>

                        <c:choose>
                            <c:when test="${empty boardList}">
                                <!-- 게시글 목록 조회 결과가 비어있다면 -->
                                <tr>
                                    <th colspan="5">게시글이 존재하지 않습니다.</th>
                                </tr>
                            </c:when>

                            <c:otherwise>
                                <!-- 게시글 목록 조회 결과가 비어있지 않다면 -->

                                <!-- 향상된 for문처럼 사용 -->
                                <c:forEach var="board" items="${boardList}">
                                    <tr>
                                        <td>${board.boardNo}</td>
                                        <td> 
                                            <%-- <c:if test="${!empty board.thumbnail}">
                                                <img class="list-thumbnail" src="${contextPath}${board.thumbnail}">
                                            </c:if>  --%>

                                            <a href="../detail/${boardCode}/${board.boardNo}?cp=${pagination.currentPage}${sURL}">${board.boardTitle}</a>   
                                            <%-- detail?no=${board.boardNo}&cp=${pagination.currentPage}&type=${param.type}${sURL} --%>
                                
                                        </td>
                                        <td>${board.userNick}</td>
                                        <td>${board.createDate}</td>
                                        <td>${board.readCount}</td>
                                    </tr>
                                </c:forEach>

                            </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>
            </div>


            <div class="btn-area">

				<c:if test="${!empty loginMember}">
                    <!-- /community/board/write -->
                    <button id="insertBtn" onclick="location.href='../write/${boardCode}?mode=insert&cp=${pagination.currentPage}'">글쓰기</button>                     
                </c:if>

            </div>

            
            <div class="pagination-area">

                <!-- 페이지네이션 a태그에 사용될 공통 주소를 저장한 변수 선언 -->
                <c:set var="url" value="${boardCode}?cp="/>


                <ul class="pagination">
                    <!-- 첫 페이지로 이동 -->
                    <li><a href="${url}1${sURL}">&lt;&lt;</a></li>

                    <!-- 이전 목록 마지막 번호로 이동 -->
                    <li><a href="${url}${pagination.prevPage}${sURL}">&lt;</a></li>

                    <!-- 범위가 정해진 일반 for문 사용 -->
                    <c:forEach var="i" begin="${pagination.startPage}" end="${pagination.endPage}" step="1">

                        <c:choose>
                            <c:when test="${i == pagination.currentPage}">
                                <li><a class="current">${i}</a></li>
                            </c:when>

                            <c:otherwise>
                                <li><a href="${url}${i}${sURL}">${i}</a></li>        
                            </c:otherwise>
                        </c:choose>

                    </c:forEach>
                    
                    <!-- 다음 목록 시작 번호로 이동 -->
                    <li><a href="${url}${pagination.nextPage}${sURL}">&gt;</a></li>

                    <!-- 끝 페이지로 이동 -->
                    <li><a href="${url}${pagination.maxPage}${sURL}">&gt;&gt;</a></li>

                </ul>
            </div>

            <!-- /board/list?type=1&cp=3 -->

            <!-- /board/list?type=1&cp=10 &key=t&query=안녕 -->

            <form action="list" method="get" id="boardSearch" onsubmit="return searchValidate()">
                <input type="hidden" name="type" value="${param.type}">

                <select name="key" id="search-key">
                    <option value="t">제목</option>
                  	<option value="c">내용</option>
                    <option value="tc">제목+내용</option>
                    <option value="w">작성자</option>
                </select>

                <input type="text" name="query"  id="search-query" placeholder="검색어를 입력해주세요.">

                <button>검색</button>
            </form>

        </section>
        
        <jsp:include page="/WEB-INF/views/common/Q&ABtn.jsp"/>
        
    </main>
    
    
    
    <div class="modal">
        <span id="modal-close">&times;</span>
        <img id="modal-image" src="${pageContext.request.contextPath}/resources/images/smile_emoji.png">
    </div>


	<footer>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	</footer>
    <script src="${pageContext.request.contextPath}/resources/js/boardJs/board.js"></script>



</body>
</html>
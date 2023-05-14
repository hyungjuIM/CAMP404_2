<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시글 등록</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/boardCss/boardWriteForm-style.css">
    
    <!--  <script src="https://kit.fontawesome.com/a2e8ca0ae3.js" crossorigin="anonymous"></script>  -->
    <!-- fontawesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

	<!-- jQuery 라이브러리 추가(CDN) -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    
    

</head>
<body>
    <main>
    <header>
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    </header>
        <form action="${boardCode}" enctype="multipart/form-data" method="POST" class="board-write"
            onsubmit="return writeValidate()">

            <!-- 제목 -->
            <h1 class="board-title">
                <input type="text" name="boardTitle" placeholder="제목을 입력해주세요." value="${detail.boardTitle}">         
            </h1>


            <!-- 내용 -->
            <div class="board-content">

                <!-- 
                    XSS 처리로 인해서 &lt; 과 같은 형태로 변한 문자들은
                    HTML 문서에 출력 될 때 &lt; 가 아닌 해석된 형태 "<" 로 출력이 된다.
                    -> 이 특징을 이용하면 별도로 XSS 처리를 해제하는 코드를 작성할 필요가 없다!

                    하지만 개행문자 <br> -> \n으로 변경하는 코드는 필요하다!
                -->
                <textarea name="boardContent">${detail.boardContent}</textarea>
            </div>

            <!-- 버튼 영역 -->
            <div class="board-btn-area">
                <button type="submit" id="writebtn">등록</button>

                <!-- insert 모드 -->
                <c:if test="${param.mode == 'insert'}">
                    <button type="button" id="goToListBtn"
                    onclick="location.href='../../list/${boardCode}'">목록으로</button>
                    
                    <button type="button" id="goToListBtn"
                    onclick="location.href='${pageContext.request.contextPath}/board/boardList';">목록으로</button>
                    
                    
  
                </c:if>
                

                <!-- update 모드 -->
                <c:if test="${param.mode == 'update'}">
                    <button type="button" onclick="location.href='${header.referer}'">이전으로</button>                           
                </c:if>


            </div>


            <!-- 숨겨진 값(hidden) -->
            <!-- 동작 구분 -->
            <input type="hidden" name="mode" value="${param.mode}">

            <!-- 게시판 구분 -->
            <input type="hidden" name="type" value="${param.type}">

            <!-- 게시글 번호 -->
            <input type="hidden" name="boardNo" value="${empty param.no ? 0 : param.no}">
            
            <!-- 현재 페이지 -->
            <input type="hidden" name="cp" value="${param.cp}">
            
            <!-- 존재하던 이미지가 제거되었음을 기록하여 전달하는 input -->
            <!-- value에 제거된 이미지의 레벨을 기록 (X버튼 클릭 시)-->
            <!-- DELETE FROM BOARD_IMG 
                 WHERE BOARD_NO = 1000 
                 AND IMG_LEVEL IN (0,3,1,2) -->
            <input type="hidden" name="deleteList" id="deleteList" value="">

        </form>
        
    </main>

    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    
	<script>
    	const boardCode = "${boardCode}"; // 게시판코드를 전역변수로 생성
    </script>

    <script src="${pageContext.request.contextPath}/resources/js/boardJs/board.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/boardJs/boardWriteForm.js"></script>


</body>
</html>
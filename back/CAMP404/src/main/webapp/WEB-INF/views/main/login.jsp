<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CAMP404</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css" />

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


		<div class="login-container">

			<div>
				<img src="${pageContext.request.contextPath}/resources/images/CAMP404(기본).png">
			</div>
			<form action="" method="post" id="login-form" autocomplete="off">
				<input type="text" name="userId" id="userId" placeholder="아이디">
				<input type="password" name="userPw" id="userPw" placeholder="비밀번호">
				<label for="remember-id"> <input type="checkbox"
					id="remember-id">아이디 저장
				</label>
				<button type="submit" class="login submit">로그인</button>
				<br> <br> <br>
				<div class="signup">
					CAMP<span style="color: rgb(255, 142, 29);">404</span>가 처음이신가요? <a href="${pageContext.request.contextPath}/main/signUp">회원가입</a>
				</div>
			</form>
		</div>

	</main>
	<footer>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	</footer>

    <script src="${pageContext.request.contextPath}/resources/js/login.js"></script>

</body>

</html>
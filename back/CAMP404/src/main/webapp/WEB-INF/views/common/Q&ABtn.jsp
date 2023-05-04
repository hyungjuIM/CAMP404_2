<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> -->


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/Q&ABtn.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

</head>

<body>
	<section>
		<!-- 아이콘 -->
		<div class="QnABtn-icon show jittery" data-animate="shake">
			<img	src="${pageContext.request.contextPath}/resources/images/pngwing.com.png" class="btn-emoji">
		</div>

		<!-- 안내-->
		<div class="QnABtn-container hidden show">
			<!--전체 컨테이너-->
			<!--상단-->
			<div class="QnABtn-2-overContainer">
				  <img src="${pageContext.request.contextPath}/resources/images/CAMP404(가로).png">
				<i 	class="fa-solid fa-xmark fa-ms" id="xbtn"></i>
			</div>

			<!------------------------------------------------>
			<!--하단(안내)-->
			<div class="QnA-2-content">
				<!--안내(내부) 컨테이너-->
				<div class="QnA-2-content-over">
					<div class="logo-div"></div>
					<!--로고-->
					<div class="camp-info">
						<div class="camp404-name">CAMP 404</div>

						<div class="hi-user-camp404">
							안녕하세요. 캠프404입니다. <img src="${pageContext.request.contextPath}/resources/images/smile_emoji.png"
								class="info-emoji">
						</div>
						<!--인사말-->
						<div class="empty-line"></div>
						<div class="operating-hours">
							<img src="${pageContext.request.contextPath}/resources/images/finger_emoji.png" class="info-emoji"> 운영시간
						</div>
						<!--안내 내용-->

						<div class="camp-info-content">
							<!--내용-->
							<div>평일 10:00~18:00</div>
							<div>- 점심시간(12:00~13:00) 제외</div>
							<div>- 주말, 공휴일 휴무</div>
						</div>
						<div class="empty-line"></div>
						<div style="color: rgb(58, 58, 58);">문의 사항을 아래에 선택해주세요.</div>
					</div>
				</div>

				<!-- 문의하기 버튼 -->
				<div class="inquire-btn">
					<a href="#">새 문의하기</a>
				</div>
				<div class="exclamation-info">
					<span class="exclamation-emoji"><i
						class="fa-solid fa-circle-exclamation"></i></span> 운영시간 아님 / 월요일 10:00부터
					운영
				</div>
			</div>
		</div>
	</section>

	<!------------------------------------------------>
	<!--상세안내-->

	<div class="QnABtn-container-2"></div>
	<script src="${pageContext.request.contextPath}/resources/js/QnABtn.js"></script>

</body>

</html>
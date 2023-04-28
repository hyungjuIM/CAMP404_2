<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css" />

<!-- fontawesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- jQuery 라이브러리 추가(CDN) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>


<title>Header</title>

</head>

<body>
	<header>
		<div class="headerContainer">
			<div class="topAreWrapper">
				<div class="leftAreaItems">
					<div class="logoArea">
						<a href="${pageContext.request.contextPath}/"><img
							src="${pageContext.request.contextPath}/resources/images/CAMP404.png" height="45px" /></a>
					</div>
					<!-- 75 ㅌ 35 -->
				</div>

				<div class="searchBarContainer">
					<div class="searchBarWrapper">
						<i class="fa-solid fa-magnifying-glass"></i><input
							class="searchBar" placeholder="어떤 강의를 찾으시나요?" />
						<div class="xbtnLocation">
							<button class="searchXBtn btnHide">x</button>
						</div>
					</div>
				</div>
				<!-- 290 ㅌ 35 -->
				<div class="rightWrapper">
					<div class="rightAreaItem">
						
						<section class="loginArea">
							<c:choose>
								<%--로그인 하기 전--%>
								<c:when test="${empty sessionScope.loginMember}">
									<a class="loginArea" href="${pageContext.request.contextPath}/member/login">
										로그인</a>
								</c:when>

								<%--로그인 된 후--%>
								<c:otherwise clss="loginArea">
									<div>
										<a href="${contextPath}/member/my-info" id="nickName">${</a>
									</div>
								</c:otherwise>

							</c:choose>
						</section>
						<!-- <a class="loginArea" href="${pageContext.request.contextPath}/member/login">로그인</a>
						<%-- servlet-context.xml에서  <beans:property name="prefix" value="/WEB-INF/views/" /> 
						<beans:property name="suffix" value=".jsp" /> 같이 설정 해주기 이렇게 하면 된다. --%> -->
						<span class="closeSearch closeSearchHide">x</span>
					</div>
				</div>
			</div>
			<div class="searchSubMenu searchSubMenu_Hide">
				<div class="searchSubMenuContainer">
					추천 검색어
					<div class="searchSubMenuWrapper">
						<span class="searchItems"><a href="#">자바스크립트</a></span>
							class="searchItems"><a href="#">파이썬</a></span> 
							class="searchItems"><a href="#">SQL</a></span>
					</div>
					<div class="searchSubMenuWrapper">
						<span class="searchItems"><a href="#">DATABASE</a></span> 
							class="searchItems"><a href="#">AI DEEP LEARNING</a></span>
					</div>
					<div class="searchSubMenuWrapper">
						<span class="searchItems"><a href="#">로또번호</a></span>
							class="searchItems"><a href="#">CHAT GPT</a></span>
					</div>
				</div>
			</div>
			<div class="catContainer">
				<ul class="catLeftWrapper">
					<span><i class="fa-solid fa-bars"></i>&nbsp;&nbsp;카테고리</span>
					<li></li>
				</ul>
				<ul class="catRightWrapper">
					<li><a href="#" class="catAreaItems">New</a></li>
					<li><a href="#" class="catAreaItems">Best</a></li>
					<li><a href="#" class="catAreaItems">FRONT-END</a></li>
					<li><a href="#" class="catAreaItems">BACK-END</a></li>
					<li><a href="#" class="catAreaItems">Database</a></li>
				</ul>
			</div>
			<ul class="subMenu subMenuLineUp">
				<div class="subMenuWrapper">
					<li class="hiddenMenu">FRONT-END <a href="#"
						class="subMenuAtag">HTML5</a> <a href="#" class="subMenuAtag">CSS</a>
						<a href="#" class="subMenuAtag">JavaScript</a> <a href="#"
						class="subMenuAtag">Jquery</a> <a href="#" class="subMenuAtag">TypeScript</a>
						<a href="#" class="subMenuAtag">React</a> <a href="#"
						class="subMenuAtag">Vue.js</a> <a href="#" class="subMenuAtag">Backbone</a>
					</li>
					<li class="hiddenMenu">BACK-END <a href="#"
						class="subMenuAtag">Java</a> <a href="#" class="subMenuAtag">Python</a>
						<a href="#" class="subMenuAtag">PHP</a> <a href="#"
						class="subMenuAtag">Ruby</a> <a href="#" class="subMenuAtag">Node.js</a>
						<a href="#" class="subMenuAtag">C#</a> <a href="#"
						class="subMenuAtag">Kotlin</a> <a href="#" class="subMenuAtag">Rust</a>
					</li>
					<li class="hiddenMenu">Database <a href="#"
						class="subMenuAtag">MySQL</a> <a href="#" class="subMenuAtag">MariaDB</a>
						<a href="#" class="subMenuAtag">PostgreSQL</a> <a href="#"
						class="subMenuAtag">ORACLE</a> <a href="#" class="subMenuAtag">SQL
							SERVER</a> <a href="#" class="subMenuAtag">DB2</a> <a href="#"
						class="subMenuAtag">Access</a> <a href="#" class="subMenuAtag">SQLite</a>
					</li>
					<li class="hiddenMenu">OS <a href="#" class="subMenuAtag">Windows</a>
						<a href="#" class="subMenuAtag">Linux</a> <a href="#"
						class="subMenuAtag">Unix</a> <a href="#" class="subMenuAtag">Mac</a>
						<a href="#" class="subMenuAtag">Android</a> <a href="#"
						class="subMenuAtag">iOS</a> <a href="#" class="subMenuAtag">UBUNTU</a>
					</li>
					<li class="hiddenMenu">피자 <a href="#" class="subMenuAtag">하와이안피자</a>
						<a href="#" class="subMenuAtag">피자헛</a> <a href="#"
						class="subMenuAtag">도미노</a> <a href="#" class="subMenuAtag">피자나라
							치킨공주</a> <a href="#" class="subMenuAtag">시카고피자</a> <a href="#"
						class="subMenuAtag">청년피자</a> <a href="#" class="subMenuAtag">반올림피자</a>
						<a href="#" class="subMenuAtag">피자에땅</a>
					</li>
					<li class="hiddenMenu">C++ <a href="#" class="subMenuAtag">1</a>
						<a href="#" class="subMenuAtag">2</a> <a href="#"
						class="subMenuAtag">3</a> <a href="#" class="subMenuAtag">4</a> <a
						href="#" class="subMenuAtag">5</a> <a href="#" class="subMenuAtag">6</a>
						<a href="#" class="subMenuAtag">7</a> <a href="#"
						class="subMenuAtag">8</a>
					</li>
				</div>
			</ul>
		</div>
		<div class="bgColor bgColorHidden"></div>

	</header>

	    <script src="${pageContext.request.contextPath}/resources/js/header.js"></script>
</body>

</html>
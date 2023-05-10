<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>classroom</title>

    <!--JQuery CDN 방식 연결-->
    <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

    <!-- fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
        integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- 날짜 및 시간 CDN -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>


    <!-- fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
        integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" />
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/classroom.css" />
    

    <!--제이쿼리-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<body>

    <!--헤더부분-->
    <header>
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    </header>



 <main>
 
<div class = "classroom">
<!--동영상-->
<div class="classroom_viewport">
    
<iframe width="1215" height="600" src="https://www.youtube.com/embed/PC3ypt_VGWI?autoplay=1&controls=" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

</div>


    <!--사이드바-->
    <div class="classroom_sidebar">
       
       <!-- <form action="classroom1" method="POST" id="classroom-note" > -->
      
        <!--강의목차,강의자료,노트부분-->
        <ul class="classroom_tabs">          
            <li><a href="#" id="classroom_tabs_menu" style="color:rgb(255, 142, 29);">강의목차</a></li>
            <li><a href="#" id="classroom_tabs_file">강의자료</a></li>
            <li><a href="#" id="classroom_tabs_note">강의노트</a></li>
        </ul>

        <!--강의 큰 제목-->
        <ul class="big_title">
            <li>AI&AE입문 CLASS</li>           
            <li>기초+실습</li>
        </ul>

        <!--강의 내용 전체content-->
        <div class="classroom_sidebar_content">

            <!--강의목차에서 나열되는 메뉴-->
            <ul class="classroom_chater">
                             
                <!--class1-->
                <li id="div1-1"class="classroom_chater_item">
                    <a href="#" class="title">    
                        <div class="title1">
                             CLASS 1 일러스트레이션 작가 훈이강사
                            <i class="fa-solid fa-angle-down"></i>
                        </div>
                        <div>OT(오리엔테이션)</div>   
                    </a>
                </li>

                <!--click 시 열리는 부분-->
                <ul id="div1-2" class = "Class_hiddenMenu">
                    <a href="#" class="title">    
                        <div class="title1">
                            CLASS 1 일러스트레이션 작가 훈강사
                            <i class="fa-solid fa-angle-up"></i>
                        </div>
                        
                        <div>OT(오리엔테이션)</div>   
                    </a>
                    <hr>
                    <li><a href="#" class="class_items">1.오리엔테이션1</a></li>
                    <li><a href="#" class="class_items">2.오리엔테이션2</a></li>      
                </ul>

                

                <!--class2-->
                <li id = "div2-1" class="classroom_chater_item">
                    <!--class2 제목-->
                    <a href="#" class="title">    
                        <div class="title2">
                            CLASS 2 일러스트레이션 다지기
                            <i class="fa-solid fa-angle-down"></i>
                        </div>
                        
                        <div>Adobe illustrator</div>    
                    </a>
                </li>

                <!--click 시 열리는 부분-->
                <ul id="div2-2" class = "Class_hiddenMenu">
                    <a href="#" class="title">    
                        <div class="title1">
                            CLASS 2 일러스트레이션 다지기
                            <i class="fa-solid fa-angle-up"></i>
                        </div>
                        
                        <div> Adobe illustrator</div>   
                    </a>
                    <hr>
                    <li><a href="#" class="class_items">1.일러스트레이션1</a></li>
                    <li><a href="#" class="class_items">2.일러스트레이션2</a></li>      
                    <li><a href="#" class="class_items">3.일러스트레이션3</a></li>    
                </ul>

                <!--class3-->
                <li id="div3-1" class="classroom_chater_item">
                    <!--class3 제목-->
                    <a href="#" class="title">    
                        <div class="title3">
                            CLASS 3 일러스트레이션 기본다지기2
                            <i class="fa-solid fa-angle-down"></i>
                        </div>
                        
                        <div> 컬러 이해하기 </div>    
                    </a>
                </li>

                 <!--click 시 열리는 부분-->
                 <ul id="div3-2" class = "Class_hiddenMenu">
                    <a href="#" class="title">    
                        <div class="title3">
                            CLASS 3 일러스트레이션 기본다지기2
                            <i class="fa-solid fa-angle-up"></i>
                        </div>
                        
                        <div>컬러 이해하기</div>   
                    </a> 
                    <hr>
                    <li><a href="#" class="class_items">기본다지기1</a></li>
                    <li><a href="#" class="class_items">기본다지기1</a></li>      
                    <li><a href="#" class="class_items">기본다지기3</a></li>                
                </ul>

                <!--class4-->
                <li id= "div4-1" class="classroom_chater_item">
                    <!--class4 제목-->
                    <a href="#" class="title">    
                        <div class="title4">
                            CLASS 4 일러스트레이션 기본다지기3
                            <i class="fa-solid fa-angle-down"></i>
                        </div>
                        
                        <div>기초 2D 일러스트</div>    
                    </a>
                </li>

                <!--click 시 열리는 부분-->
                <ul id="div4-2" class = "Class_hiddenMenu">
                    <a href="#" class="title">    
                        <div class="title4">
                            CLASS 4 일러스트레이션 기본다지기3
                            <i class="fa-solid fa-angle-up"></i>
                        </div>
                        
                        <div>기초 2D 일러스트</div>   
                    </a>
                    <hr>
                    <li><a href="#" class="class_items">기초 2D 일러스트1</a></li>
                    <li><a href="#" class="class_items">기초 2D 일러스트2</a></li>      
                    <li><a href="#" class="class_items">기초 2D 일러스트3</a></li>   
                </ul>
            </ul>

            <!--강의자료-->
            <!--예) 강의자료 글자 클릭시, 강의목차 hide, 강의자료 관련 메뉴 show -->
            <ul class="classroom_asset_list">
                <!--1-->
                <li class = "classroom_asset_item">
                    <p class="classroom_asset_label">(추가)커리큘럼.pdf</p>
                    <a href="${pageContext.request.contextPath}/resources/images/test.pdf" download>
                    	<i class="fa-solid fa-file-arrow-down"></i>
                    </a>
                </li>

                <!--2-->
                <li class = "classroom_asset_item">
                    <p class="classroom_asset_label">(추가)시스템 권장사양.pdf</p>
                    <a href="${pageContext.request.contextPath}/resources/images/test.pdf" download>
                    <i class="fa-solid fa-file-arrow-down"></i></a>
                </li>

                <!--3-->
                <li class = "classroom_asset_item">
                    <p class="classroom_asset_label">일러스트레이터_신혜경_서체.zip</p>
                    <a href="${pageContext.request.contextPath}/resources/images/test.pdf" download>
                    <i class="fa-solid fa-file-arrow-down"></i></a>
                </li>

                <!--4-->
                <li class = "classroom_asset_item">
                    <p class="classroom_asset_label">(추가)Q&A_CS6.ai</p>
                    <a href="${pageContext.request.contextPath}/resources/images/test.pdf" download>
                    <i class="fa-solid fa-file-arrow-down"></i></a>
                </li>

                <!--5-->
                <li class = "classroom_asset_item">
                    <p class="classroom_asset_label">디자인.pdf</p>
                    <a href="${pageContext.request.contextPath}/resources/images/test.pdf" download>
                    <i class="fa-solid fa-file-arrow-down"></i></a>
                </li>

                <!--6-->
                <li class = "classroom_asset_item">
                    <p class="classroom_asset_label">일러스트레이션1.pdf</p>
                    <a href="${pageContext.request.contextPath}/resources/images/test.pdf" download>
                    <i class="fa-solid fa-file-arrow-down"></i></a>
                </li>

                <!--7-->
                <li class = "classroom_asset_item">
                    <p class="classroom_asset_label">일러스트레이션2.pdf</p>
                    <a href="${pageContext.request.contextPath}/resources/images/test.pdf" download>
                    <i class="fa-solid fa-file-arrow-down"></i></a>
                </li>

                <!--8-->
                <li class = "classroom_asset_item">
                    <p class="classroom_asset_label">일러스트레이션3.pdf</p>
                    <a href="${pageContext.request.contextPath}/resources/images/test.pdf" download>
                    <i class="fa-solid fa-file-arrow-down"></i></a>
                </li>
            </ul>


            
            </div>
        
		
        <!--강의노트-->
        <!--강의노트 글자 클릭시, 강의노트 관련 탭 나열-->
          
            <div class="classroom_notes" >

                <!--전체를 감싸는 wrapper-->                    
                <div class="wrapper"> 
 					
 					
 					
                    <!--노트 작성 : 글자수카운트, 글자입력공간 둘러싼거-->                           
                    <div class="enterArea" > 
                        <!--노트  0/2000 글자수 count 하는곳-->
                        <div class="outerWrapper">
                            <span class="counterOuter">0</span> 
                            <p>/ 2,000</p> <!--입력 카운터-->
                        </div>
                        
                        
                        
                        <!--text 입력하는 부분-->
                        <textarea class="typeData" type="text" rows="580" cols="100" 
                        placeholder="노트를 작성해주세요. 최대 2000자까지 입력하실 수 있습니다.">
                        </textarea>
                    </div>

                    <!--저장하기버튼-->
                    <div class="downFunction">
                        <button class="dBtn add">저 장</button>
                    </div>
                    
                   
        
                </div>
  
            </div>   
            <!--강의노트목록이 실제로 출력되는 영역  -->
         
        <!--<form action="classroom1" method="POST"  >  --> 
            <div class="subArea" >
                <div class="bottomWrapper">
                    <button class="noteWrite">+</button>
                </div>
            </div>
	<!-- </form> -->
	 <!-- </form> -->
 
   </div>

      

</div> 
</main>

 <script src="${pageContext.request.contextPath}/resources/js/classroom.js"></script>

</body>
</html>
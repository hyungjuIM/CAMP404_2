/*강의목차에서 강의내용 tab 클릭시 해당 class 별로
  목차 나오는 아코디언 메뉴 */
/* class1 */ 
$(document).ready(function() {
  $('#div1-1').click(function() {
    $('#div1-1').hide();
    $('#div1-2').show();
  });
  
  $('#div1-2').click(function() {
    $('#div1-2').hide();
    $('#div1-1').show();
  });
});

/* class2 */ 
$(document).ready(function() {
  $('#div2-1').click(function() {
    $('#div2-1').hide();
    $('#div2-2').show();
  });
  
  $('#div2-2').click(function() {
    $('#div2-2').hide();
    $('#div2-1').show();
  });
});

/* class3 */ 

$(document).ready(function() {
  $('#div3-1').click(function() {
    $('#div3-1').hide();
    $('#div3-2').show();
  });
  
  $('#div3-2').click(function() {
    $('#div3-2').hide();
    $('#div3-1').show();
  });
});

/* class4 */ 
$(document).ready(function() {
  $('#div4-1').click(function() {
    $('#div4-1').hide();
    $('#div4-2').show();
  });
  
  $('#div4-2').click(function() {
    $('#div4-2').hide();
    $('#div4-1').show();
  });
});

/*상단의 강의목차 클릭시 다른메뉴 hide, 강의목차 관련 메뉴 show */
$('#classroom_tabs_menu').click(function(){
 
  $('.classroom_chater').show();/*강의목차 show */  
  $('.classroom_asset_list').hide();/*강의자료 hide */
  $('.classroom_notes').hide();/*강의노트 hide */
  $('.subArea').hide();  /*저장된 강의노트목록 hide */
  $('.noteWrite').hide();  /*글작성버튼 hide */

  
})

/*------------------------------------------*/ 
/*상단의 강의자료 클릭시 강의목차 hide, 강의자료 관련 메뉴 show */
$('#classroom_tabs_file').click(function(){
  $('.classroom_asset_list').show();/*강의자료 show */ 
  $('.classroom_chater').hide();/*강의목차 hide */  
  $('.classroom_notes').hide();/*강의노트 hide */
  $('.subArea').hide();  /*저장된 강의노트목록 hide */
  $('.noteWrite').hide();  /*글작성버튼 hide */
  
})


//--------------------------------------------------------------

/*상단의 강의노트 클릭시 강의목차/강의자료 hide, 강의노트 관련 메뉴 show 
   todolist*/
   $('#classroom_tabs_note').click(function(){
    $('.classroom_chater').hide();/*강의목차 hide */  
    $('.classroom_asset_list').hide();/*강의자료 hide */ 
    $('.classroom_notes').hide();/*강의노트 show */
    $('.subArea').show();  /*저장된 강의노트목록 hide */
    $('.noteWrite').show();  /*글작성버튼 show */
  
  })


//dBtn (저장하기) 버튼 클릭시 다른영역 모두 hide, 저장된 강의노트 목록 show
$('.dBtn').click(function(){
$('.classroom_chater').hide();/*강의목차 hide */  
$('.classroom_asset_list').hide();/*강의자료 hide */   
$('.classroom_notes').hide();/*강의노트 hide */
$('.subArea').show();/*저장된 강의노트 목록 show */
$('.noteWrite').show();  /*글작성버튼 show */

})


//글 작성하기 버튼 클릭시 노트작성 영역만 show , 나머지 hide 
$('.noteWrite').click(function(){
$('.classroom_chater').hide();/*강의목차 hide */  
$('.classroom_asset_list').hide();/*강의자료 hide */ 
$('.classroom_notes').show();/*강의노트 hide */  
$('.subArea').hide();/*저장된 강의노트 목록 hide */ 
$('.noteWrite').hide();  /*글작성버튼 hide */

})


  const typeData = document.querySelector('.typeData');//노트작성공간
  const subArea = document.querySelector('.subArea');//작성한노트 출력공간
  let count = 0;
  const arr1 = [];
  const counterOuter = document.querySelector('.counterOuter');//글작성 글자수카운트

  //추가버튼 눌렀을 때 실행될 함수
  function setToDo(a){
    $('.counterOuter').text(0); //글자수카운터 초기화
    $('.counterOuter').css("color","white") //기본 css 설정
    if (!typeData.value) {
      alert('내용을 입력해 주세요.');
      return;
  }
    arr1.push(typeData.value); //노트작성한거 배열에 넣기

    //================================================
    //작성한 노트 목록 추가
    const addWrapper = document.createElement('div');
    addWrapper.classList.add('addWrapper');
    
    //subArea 저장된 강의노트 목록
       //addWrapper 작성 노트목록 나열 
          //addArea(노트작성시 추가되어 나열되는 목록)
             //slideWrapper(노트수정박스)
                 //p (enterDate-수정된날짜)
                 //slideArea(수정할수 잇는 노트부분을 감싸는 영역)
    addWrapper.innerHTML = `
   
<div class = "addArea">
    <div class="text1"></div>          
    <div class="down"><i class="fa-solid fa-angle-down"></i></div>  
    <div class="up"><i class="fa-solid fa-angle-up"></i></div>
</div>

<div class="slideWrapper">

    <div class="slideArea">
        <textarea class="text2"></textarea>
        <div class="slideAreaDown">
            <div class="enterDate">23.04.21</div>           
            <div class="change">수정</div>
            <div class="remove">삭제</div>            
        </div>          
    </div>
</div>
      
    `;




//작성한 노트(addWrapper)를 subArea 에 추가하기
subArea.append(addWrapper);


const input = addWrapper.querySelector('.text1'); //입력한값 출력되는 공간
input.innerText = typeData.value.trim(); //trim으로 앞뒤 공백 제거
typeData.value = '';


const remove = addWrapper.querySelector('.remove');//삭제하기 누르면 삭제
remove.classList.add('remove')



//슬라이드 기능-slideToggle 함수로 slide up/down 
  const slideArea = addWrapper.querySelector('.slideArea');
  const down = addWrapper.querySelector('.down');
  const up = addWrapper.querySelector('.up');
  down.addEventListener('click', () => {
    $(slideArea).slideToggle();
    $(down).hide();
    $(up).show();
});



  up.addEventListener('click', () => {
    $(slideArea).slideToggle();
    $(down).show();
    $(up).hide();
});


//열려진 슬라이드 내부 수정기능
const innerInput = addWrapper.querySelector('.text2'); //슬라이브 내부 수정공간
const change = addWrapper.querySelector('.change');

  innerInput.value = input.innerText; //
  change.addEventListener('click', () => {
   
          input.innerText = innerInput.value;
          enterDate.innerText = (moment().format("YYYY.MM.DD HH:mm:ss"));
          alert('변경사항이 저장되었습니다!');
          $(slideArea).slideToggle();
          $(down).show();
          $(up).hide();
        });



//날짜추가
let enterDate = addWrapper.querySelector('.enterDate');
enterDate.innerText = (moment().format("YYYY.MM.DD HH:mm:ss") );


//삭제기능
remove.addEventListener('click',()=>{
      // addWrapper.remove(); 
      // alert("노트가 삭제되었습니다!");
      if (confirm("정말 삭제하시겠습니까?") == true){ 
        addWrapper.remove();   
    }else{    
        return false;
    }
})
  };

/////////////////////////////////////////////////


//저장하기 버튼 클릭시 노트 저장
const add = document.querySelector('.add');
add.addEventListener('click', ()=>{
setToDo();
})



/////////////////////////////////////////////////////////

//노트 작성창 숫자 카운트
//const input = addWrapper.querySelector('.text1'); //입력한값 출력되는 공간

typeData.addEventListener('input', (e)=>{
const str = $(e.target).val();
if(str.length <= 1000) {
  $('.counterOuter').css("color","white");
} else if(str.length <= 1800){
  $('.counterOuter').css("color", "orange");
} else{
  $(e.target).val(str.substr(0,2000));
  $('.counterOuter').css("color", "red");
}
$('.counterOuter').text($(e.target).val().length);
})


///////목록 포커스
$('document').ready(function(){
 
  $('#classroom_tabs_menu').focus(function(){
      $(this).css("color","rgb(255, 142, 29)");
    });
      $("#classroom_tabs_menu").blur(function(){ 
      $(this).css("color","rgb(146, 145, 145)");
    });
    
  $('#classroom_tabs_file').focus(function(){
      $(this).css("color","rgb(255, 142, 29)");
      $('#classroom_tabs_menu').css("color","rgb(146, 145, 145)")
    });
      $("#classroom_tabs_file").blur(function(){ 
      $(this).css("color","rgb(146, 145, 145)");
    });
    
  $('#classroom_tabs_note').focus(function(){
      $(this).css("color","rgb(255, 142, 29)");
      $('#classroom_tabs_menu').css("color","rgb(146, 145, 145)")
    });
      $("#classroom_tabs_note").blur(function(){ 
      $(this).css("color","rgb(146, 145, 145)");
    });
})









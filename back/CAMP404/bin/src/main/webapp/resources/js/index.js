const leftBtn = $('.leftBtn');
const moveNum = $('.moveNum');
const fixedNum = $('.fixedNum');
const rightBtn = $('.rightBtn');
const slideImgHolder = $('.slideImgHolder');

const setSlideArea = $('.setSlideArea');
const colorArr = ['#1e1e1e', '#f27f88', '#b843ff', '#8e8fc3'];
const likeBtn = $('.topText> .likeBtn');
const heart = $('.heart');

let num = 1100;
let screenMove = -1100;
let movenum = 1;
let colorChange = 0;

// 오른쪽 버튼 기능 함수화
function rightMove() {
    if (screenMove > -4400) {
        moveNum.text(++movenum);
        slideImgHolder.css('transform', 'translateX(' + screenMove + 'px)');
        colorChange++;
        setSlideArea.css('backgroundColor', colorArr[colorChange]);
        screenMove += (-num);
    } else { // movenum이 4보다 커졌을 때,
        screenMove = 0;
        movenum = 1
        colorChange = 0;
        slideImgHolder.css('transform', 'translateX(' + screenMove + 'px)');
        setSlideArea.css('backgroundColor', colorArr[colorChange]);
        screenMove = (-num);
        moveNum.text("1");
    }
};

// 왼쪽 버튼 기능 함수화
function leftMove() {
    if (screenMove >= -1100) { // movenum이 4보다 커졌을 때,
        movenum = 4
        colorChange = 3;
        screenMove = -4400;
        slideImgHolder.css('transform', 'translateX(' + (screenMove + (num)) + 'px)');
        setSlideArea.css('backgroundColor', colorArr[colorChange]);
        moveNum.text("4");
    } else {
        moveNum.text(--movenum);
        slideImgHolder.css('transform', 'translateX(' + (screenMove + (num * 2)) + 'px)');
        --colorChange;
        setSlideArea.css('backgroundColor', colorArr[colorChange]);
        screenMove += num;
    }
};

// 자동 슬라이드 기능 (내부 내용은 오른쪽 버튼 클릭과 같음.)
function slide() {
    rightMove();
    // console.log("5초마다 상단 슬라이드가 이동함");
};

let ci = setInterval(slide, 5000);

// 드래그(스와이프) 이벤트를 위한 변수 초기화
let startPoint = 0;
let endPoint = 0;

// PC 클릭 이벤트 (드래그)
slideImgHolder.on("mousedown", (e) => {
    console.log("mousedown", e.pageX);
    startPoint = e.pageX; // 마우스 드래그 시작 위치 저장
});

slideImgHolder.on("mouseup", (e) => {
    console.log("mouseup", e.pageX);
    endPoint = e.pageX; // 마우스 드래그 끝 위치 저장
    if (startPoint < endPoint) {
        // 마우스가 오른쪽으로 드래그 된 경우
        console.log("prev move");
        leftMove();
        clearInterval(ci);
    } else if (startPoint > endPoint) {
        // 마우스가 왼쪽으로 드래그 된 경우
        console.log("next move");
        rightMove();
    }
    clearInterval(ci);
    ci = setInterval(slide, 5000);
    console.log("인터벌을 초기화함");
});

// 오른쪽 버튼 눌렀을 때, 슬라이드
rightBtn.on('click', function () {
    rightMove();
    console.log("우클릭 시, " + colorChange);
    clearInterval(ci);
    ci = setInterval(slide, 5000);
    console.log("오른쪽 버튼을 눌러서 초기화함");
});

// 왼쪽 버튼 눌렀을 때 슬라이드.
leftBtn.on('click', function () {
    leftMove();
    console.log("좌클릭 시, " + colorChange);
    clearInterval(ci);
    ci = setInterval(slide, 5000);
    console.log("왼쪽 버튼을 눌러서 초기화함");
});



// 강의 좋아요 버튼
likeBtn.on('click', function () {
    $(this).toggleClass('likeColor');
});
// =========================================================================
// =========================================================================
// =========================================================================
// =========================================================================

// 중간 광고 영역1

const Middle_leftBtn = $('.Middle_leftBtn');
const Middle_rightBtn = $('.Middle_rightBtn');
const midde_SlideImgHolder = $('.midde_SlideImgHolder');
const Middle_moveNum = $('.Middle_moveNum');
const middleAddArea = $('.middleAddArea');

let middle_num = 1100;
let middle_screenMove = -1100;
let middle_move = 1;
let middle_colorChange = 0;

function middle_rightMove() {
    if (middle_screenMove > -3300) {
        Middle_moveNum.text(++middle_move);
        midde_SlideImgHolder.css('transform', 'translateX(' + middle_screenMove + 'px)');
        middle_screenMove += (-middle_num);
    } else {
        middle_screenMove = 0;
        middle_move = 1
        midde_SlideImgHolder.css('transform', 'translateX(' + middle_screenMove + 'px)');
        middle_screenMove = (-middle_num);
        Middle_moveNum.text("1");
    }
};

function middle_leftMove() {
    if (middle_screenMove >= -1100) {
        middle_move = 3
        middle_screenMove = -3300;
        midde_SlideImgHolder.css('transform', 'translateX(' + (middle_screenMove + (middle_num)) + 'px)');
        Middle_moveNum.text("3");
    } else {
        Middle_moveNum.text(--middle_move);
        midde_SlideImgHolder.css('transform', 'translateX(' + (middle_screenMove + (middle_num * 2)) + 'px)');
        middle_screenMove += middle_num;
    }
};

midde_SlideImgHolder.on("mousedown", (e) => {
    console.log("mousedown", e.pageX);
    startPoint = e.pageX; // 마우스 드래그 시작 위치 저장
});



function middle_slide() {
    middle_rightMove();
    // console.log("10초마다 광고 영역1 슬라이드가 이동함");
};

let mi = setInterval(middle_slide, 10000);

Middle_rightBtn.on('click', function () {
    middle_rightMove();
    clearInterval(mi);
    mi = setInterval(middle_slide, 10000);
    console.log("오른쪽 버튼을 눌러서 초기화함");
});

Middle_leftBtn.on('click', function () {
    middle_leftMove();
    clearInterval(mi);
    mi = setInterval(middle_slide, 10000);
    console.log("왼쪽 버튼을 눌러서 초기화함");
});

// ==========================

let middle_startPoint = 0;
let middle_endPoint = 0;

middleAddArea.on("mousedown", (e) => {
    console.log("mousedown", e.pageX);
    middle_startPoint = e.pageX; // 마우스 드래그 시작 위치 저장
});

middleAddArea.on("mouseup", (e) => {
    console.log("mouseup", e.pageX);
    middle_endPoint = e.pageX; // 마우스 드래그 끝 위치 저장
    if (middle_startPoint < middle_endPoint) {
        // 마우스가 오른쪽으로 드래그 된 경우
        console.log("prev move");
        middle_leftMove();
        clearInterval(mi);
    } else if (middle_startPoint > middle_endPoint) {
        // 마우스가 왼쪽으로 드래그 된 경우
        console.log("next move");
        middle_rightMove();
    }
    clearInterval(mi);
    mi = setInterval(middle_slide, 10000);
    console.log("인터벌을 초기화함");
});
// 중간 광고 영역1

// =========================================================================
// =========================================================================
// =========================================================================
// =========================================================================

// 중간 광고 영역2

const Middle_leftBtn2 = $('.Middle_leftBtn2');
const Middle_rightBtn2 = $('.Middle_rightBtn2');
const midde_SlideImgHolder2 = $('.midde_SlideImgHolder2');
const Middle_moveNum2 = $('.Middle_moveNum2');
const middleAddArea2 = $('.middleAddArea2');

let middle_num2 = 1100;
let middle_screenMove2 = -1100;
let middle_move2 = 1;

function middle_rightMove2() {
    if (middle_screenMove2 > -3300) {
        Middle_moveNum2.text(++middle_move2);
        midde_SlideImgHolder2.css('transform', 'translateX(' + middle_screenMove2 + 'px)');
        middle_screenMove2 += (-middle_num2);
    } else {
        middle_screenMove2 = 0;
        middle_move2 = 1
        midde_SlideImgHolder2.css('transform', 'translateX(' + middle_screenMove2 + 'px)');
        middle_screenMove2 = (-middle_num2);
        Middle_moveNum2.text("1");
    }
};

function middle_leftMove2() {
    if (middle_screenMove2 >= -1100) {
        middle_move2 = 3
        middle_screenMove2 = -3300;
        midde_SlideImgHolder2.css('transform', 'translateX(' + (middle_screenMove2 + (middle_num2)) + 'px)');
        Middle_moveNum2.text("3");
    } else {
        Middle_moveNum2.text(--middle_move2);
        midde_SlideImgHolder2.css('transform', 'translateX(' + (middle_screenMove2 + (middle_num2 * 2)) + 'px)');
        middle_screenMove2 += middle_num2;
    }
};

midde_SlideImgHolder2.on("mousedown", (e) => {
    console.log("mousedown", e.pageX);
    startPoint = e.pageX; // 마우스 드래그 시작 위치 저장
});



function middle_slide2() {
    middle_rightMove2();
    // console.log("7초마다 광고 영역2 슬라이드가 이동함");
};

let mi2 = setInterval(middle_slide2, 7000);

Middle_rightBtn2.on('click', function () {
    middle_rightMove2();
    clearInterval(mi2);
    mi2 = setInterval(middle_slide2, 7000);
    console.log("오른쪽 버튼을 눌러서 초기화함");
});

Middle_leftBtn2.on('click', function () {
    middle_leftMove2();
    clearInterval(mi2);
    mi2 = setInterval(middle_slide2, 7000);
    console.log("왼쪽 버튼을 눌러서 초기화함");
});

// ==========================

let middle_startPoint2 = 0;
let middle_endPoint2 = 0;

middleAddArea2.on("mousedown", (e) => {
    console.log("mousedown", e.pageX);
    middle_startPoint2 = e.pageX; // 마우스 드래그 시작 위치 저장
});

middleAddArea2.on("mouseup", (e) => {
    console.log("mouseup", e.pageX);
    middle_endPoint2 = e.pageX; // 마우스 드래그 끝 위치 저장
    if (middle_startPoint2 < middle_endPoint2) {
        // 마우스가 오른쪽으로 드래그 된 경우
        console.log("prev move");
        middle_leftMove2();
        clearInterval(mi2);
    } else if (middle_startPoint2 > middle_endPoint2) {
        // 마우스가 왼쪽으로 드래그 된 경우
        console.log("next move");
        middle_rightMove2();
    }
    clearInterval(mi2);
    mi2 = setInterval(middle_slide2, 7000);
    console.log("인터벌을 초기화함");
});

// 중간 광고 영역2

// 숫자 증가
// 가입 회원 수
$({ val: 0 }).animate({ val: 2000 }, { // 값이 0 부터 2000 까지 애니메이션 효과 적용.
    duration: 500, // 2,000 ms 초 동안 실행
    easeing: 'easeOutQuad',
    step: function () { // step : 움직임이 발생할 때마다 실행할 함수를 등록.
        var num = numberWithCommas(Math.floor(this.val)); // Math.floor -> 소수점 이하 자리를 버린다는 의미이다.
        $(".count_num1").text(num); // .text는 innerText와 같다.
    },
    complete: function () { // complete : 애니메이션이 종료 후 실행할 함수를 등록.
        var num = numberWithCommas(Math.floor(this.val));
        $(".count_num1").text(num);
    },
});

// 회원 증가율
$({ val: 0 }).animate({ val: 120 }, {
    duration: 500,
    step: function () {
        var num = numberWithCommas(Math.floor(this.val));
        $(".count_num2").text(num);
    },
    complete: function () {
        var num = numberWithCommas(Math.floor(this.val));
        $(".count_num2").text(num);
    }
});

// 오픈된 클래스
$({ val: 0 }).animate({ val: 600 }, {
    duration: 500,
    step: function () {
        var num = numberWithCommas(Math.floor(this.val));
        $(".count_num3").text(num);
    },
    complete: function () {
        var num = numberWithCommas(Math.floor(this.val));
        $(".count_num3").text(num);
    }
});

// 글로벌 포함 연사 수
$({ val: 0 }).animate({ val: 700 }, {
    duration: 500,
    step: function () {
        var num = numberWithCommas(Math.floor(this.val));
        $(".count_num4").text(num);
    },
    complete: function () {
        var num = numberWithCommas(Math.floor(this.val));
        $(".count_num4").text(num);
    }
});


function numberWithCommas(x) { // 3자리마자 콤마를 찍어주기 위한 정규식.
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}




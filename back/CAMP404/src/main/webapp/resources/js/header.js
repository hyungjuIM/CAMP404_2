const searchBarWrapper = $('.searchBarWrapper');
const searchBar = $('.searchBar');
const searchXBtn = $('.searchXBtn');
const loginArea = $('.loginArea');
const closeSearch = $('.closeSearch');
const searchSubMenu = $('.searchSubMenu');
const body = $('body');
const searchItems = $('.searchItems');
const bgColor = $('.bgColor');
const header = $('header');


// 검색창 클릭 시 가운데 이동 및 사이즈 변경
searchBar.on('click', function () {
    if (searchBarWrapper.hasClass('searchBarMiddle') === false) {
        subMenu.slideUp('fast');
        bgColor.removeClass('bgColorHidden');
        searchBarWrapper.addClass('searchBarMiddle');
    } else {
        return false;
    }
});


// 검색창 X표시
searchBar.on('input', function () {
    if (searchBar.val() != '') {
        // console.log('검색창에 입력함');
        searchXBtn.removeClass('btnHide');
    } else {
        searchXBtn.addClass('btnHide');
    }
});

// 검색창 X표시 클릭 시 초기화
searchXBtn.on('click', function () {
    // console.log('삭제버튼 클릭');
    searchBar.val('');
    searchXBtn.addClass('btnHide');
});

// 검색창 클릭 시, 로그인 버튼 숨기기 및 X 버튼 나타내기

searchBar.on('click', function () {
    loginArea.addClass('loginAreaHide');
    closeSearch.removeClass('closeSearchHide');
    searchSubMenu.removeClass('searchSubMenu_Hide');
});


closeSearch.on('click', function () {
    if (searchBarWrapper.hasClass('searchBarMiddle') === true) {
        console.log('검색창 닫기 버튼 누름');
        loginArea.removeClass('loginAreaHide');
        closeSearch.addClass('closeSearchHide');
        searchSubMenu.addClass('searchSubMenu_Hide');
        searchBarWrapper.removeClass('searchBarMiddle');
        bgColor.addClass('bgColorHidden');
    } else {
        return false;
    }
});

searchBar.on('focusout', function () {
    if (searchBarWrapper.hasClass('searchBarMiddle') === true) {
        console.log('검색창 닫기 버튼 누름');
        loginArea.removeClass('loginAreaHide');
        closeSearch.addClass('closeSearchHide');
        searchSubMenu.addClass('searchSubMenu_Hide');
        searchBarWrapper.removeClass('searchBarMiddle');
        bgColor.addClass('bgColorHidden');
    } else {
        return false;
    }
});

// 검색창 눌렀을 떄 내부 이벤트 고정
searchSubMenu.on('mousedown', function (e) {
    e.preventDefault();
});






const catLeftWrapper = $('.catLeftWrapper');
const subMenu = $('.subMenu');

let flag = false;

// 메뉴창 들어갈 때 슬라이드 다운
catLeftWrapper.on('mouseover', function () {
    if (!flag) subMenu.slideDown('fast');
    flag = true;
});

// 메뉴창 떠날 떄 슬라이드 업
subMenu.on('mouseleave', function () {
    subMenu.slideUp('fast');
});

catLeftWrapper.on('mouseleave', function () {
    flag = false;
});

// 메뉴창 떠날 떄 슬라이드 업
catLeftWrapper.on('click', function () {
    subMenu.slideUp('fast');
});


//------------------


const nickName = $('#nickName'); 
const userMenu = $('.user_small_menu');
let flag = false;

// 닉네임에 마우스오버하면 메뉴 슬라이드다운
nickName.on('mouseover', function(){
    if(!flag) userMenu.slideDown('fast');
    flag = true;
});

// 유저메뉴에서 마우스리브할때 메뉴 슬라이드업
userMenu.on('mouseleave', function(){
   userMenu.slideUp('fast');
});

nickName.on('mouseleave', function(){
    flag = false;
});

nickName.on('click', function(){
    userMenu.slideUp('fast');
});
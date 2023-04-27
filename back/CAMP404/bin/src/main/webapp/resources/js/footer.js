const button = $('.button');
const menu = $('.menu');


button.on('mouseover', function () {
    menu.slideDown('fast');
});

// 메뉴창 떠날 떄 슬라이드 업
menu.on('mouseleave', function () {
    menu.slideUp('fast');
});
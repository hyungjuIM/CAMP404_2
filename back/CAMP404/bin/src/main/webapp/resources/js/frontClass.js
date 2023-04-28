window.onload = () => {
    const middle = $('.c_rightMiddle0');
    const xBtn = $('.c_rightMiddle_Under3');
    const Container = $('.c_rightMiddle_Under_Container');
    const likeBtn = $('.c_topBuybtn2> .likeBtn');

    middle.on('click', function () {
        Container.removeClass('couponHidden');
    });

    xBtn.on('click', function () {
        Container.addClass('couponHidden');
    });


    const bottom = $('.c_rightBottom0');
    const bottomXBtn = $('.c_rightMiddle_Under3');
    const bottomContainer = $('.c_rightBottom_Under_Container');

    bottom.on('click', function () {
        bottomContainer.removeClass('couponHidden');
    });

    bottomXBtn.on('click', function () {
        bottomContainer.addClass('couponHidden');
    });

    likeBtn.on('click', function () {
        $(this).toggleClass('likeColor');
    });
};
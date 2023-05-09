const goClass = document.querySelectorAll(".goClass");
const index = document.querySelectorAll(".classIndex");


for (let i = 0; i < goClass.length; i++) {
    let classes = goClass[i];
    classes.addEventListener("mouseover", function () {

        index[i].style.color = "#fe6936";
    })
    classes.addEventListener("mouseleave", function () {
        index[i].style.color = "#cecece";
    })
};


function test() {
    console.log("로그아웃 버튼 누름");
    let url = "/CAMP404/myPage/logout";
    location.href = url;
}
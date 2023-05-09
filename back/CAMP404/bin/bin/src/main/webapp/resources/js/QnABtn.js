// QnA 버튼 클릭 시
const QnABtn = document.querySelector('.QnABtn-icon');
const QnAContainer = document.querySelector('.QnABtn-container');
const xbtn = document.querySelector('#xbtn');

QnABtn.addEventListener('click', () => {
  // QnA 컨테이너 토글
  QnAContainer.classList.toggle('show');

  if(!QnABtn.classList.contains('hidden')){
    QnABtn.classList.add('hidden');
    QnAContainer.classList.remove('hidden');
  } 

});
xbtn.addEventListener('click', () => {
  QnABtn.classList.toggle('show');
  if(!xbtn.classList.contains('hidden')){
    QnAContainer.classList.add('hidden');
    QnABtn.classList.remove('hidden');
  } 

})

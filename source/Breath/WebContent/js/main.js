const searchEl = document.querySelector('.search');
const searchInputEl = searchEl.querySelector('input');

searchEl.addEventListener('click', function(){
  searchInputEl.focus();
});

searchInputEl.addEventListener('focus', function () {
  searchInputEl.classList.add('focused');
  searchInputEl.setAttribute('placeholder', '트레이너를 검색하세요');
});

searchInputEl.addEventListener('blur', function () {
  searchInputEl.classList.add('focused');
  searchInputEl.setAttribute('placeholder', '');
});


const badgeEl = document.querySelector('header .badges');
window.addEventListener('scroll', _.throttle(function(){
  console.log(window.scrollY);
  if(window.scrollY > 500){
    gsap.to(badgeEl, .6, {
      opacity: 0, 
      display: 'none'
    });
  } else {
    gsap.to(badgeEl, .6, {
      opacity: 1, 
      display: 'block'
    });
  }
}, 300));


const fadeEls = document.querySelectorAll('.visual .fade-in');
fadeEls.forEach(function(fadeEl, index){
  gsap.to(fadeEl, 1, {
    delay: (index + 1) * .7, 
    opacity:1
  });
}); 

////공지사항
//new Swiper('.notice-line .swiper-container', {
//  direction: 'vertical', // 수직 슬라이드
//  autoplay: true, // 자동 재생 여부
//  loop: true // 반복 재생 여부
//})

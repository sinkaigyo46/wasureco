window.addEventListener('turbo:load', function(){
  const search = document.getElementById('search');
  const pullDownMenu = document.getElementById('search');
  const spinner = document.getElementById('spinner');

  search.addEventListener('mouseover', function(){
    this.setAttribute('style',"background-color: #ffdb4f;");
  });
  search.addEventListener('mouseout', function(){
    this.removeAttribute('style',"background-color: #ffdb4f;");
  });

  
  spinner.classList.add('loaded');


});
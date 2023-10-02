window.addEventListener('turbo:load', function(){
  const search = document.getElementById('search');
  const pullDownMenu = document.getElementById('search');

  search.addEventListener('mouseover', function(){
    this.setAttribute('style',"background-color: #ffdb4f;");
  });
  search.addEventListener('mouseout', function(){
    this.removeAttribute('style',"background-color: #ffdb4f;");
  });

  document.addEventListener('turbo:load', function() {
    const loader = document.getElementById('loader');
    loader.classList.add('loaded');
  });


});
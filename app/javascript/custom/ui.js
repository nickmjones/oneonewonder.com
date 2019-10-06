document.addEventListener('turbolinks:load', function(){
  var message = document.querySelector('.message')

  function hideMessage() {
    message.classList.toggle('message--hidden');
  }

  window.onload = function(){
    setTimeout(function(){
      hideMessage();
    }, 4000);
  }
});

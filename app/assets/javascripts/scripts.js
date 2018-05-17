// document ready functions
$(document).ready(function(){
  // animation
  $('#q').click(function() {
    $('#search-btn').addClass('animated pulse').one('animationend', function() {
      $(this).removeClass('animated pulse');
    });
  });
  // $('.animated').removeClass('hidden').addClass('visible');


});

// $(window).on('load', function() {
//   $('#body-content').css('opacity', '1.0');
//     console.log('window load occurred');
// });

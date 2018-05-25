$(document).on('turbolinks:load', function() {
  $('#body-content').css('opacity', '1.0');

  $('#q').click(function() {
    $('#search-btn').addClass('animated pulse').one('animationend', function() {
      $(this).removeClass('animated pulse');
    });
  });

  $('.alert').addClass('animated alert-animation lightSpeedOut');

});

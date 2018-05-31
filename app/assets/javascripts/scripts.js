$(document).on('turbolinks:load', function() {
  $('#body-content').css('opacity', '1.0');

  $('#q').click(function() {
    $('#search-btn').addClass('animated pulse').one('animationend', function() {
      $(this).removeClass('animated pulse');
    });
  });

  $('.alert').addClass('animated alert-animation lightSpeedOut');

  $('#sidenav-open-btn').click(function() {
    // $('.primary-navbar').css('display', 'none');
    $('.sidenav').css('width', '250px');
    $('.main-container').css('margin-left', '250px');
    $('body').css('background-color', 'rgba(0,0,0,0.4)');
  });

  $('#sidenav-close-btn').click(function() {
    // $('.primary-navbar').css('display', 'flex');
    $('.sidenav').css('width', '0');
    $('.main-container').css('margin-left', '0');
    $('body').css('background-color', 'white');
  });


});

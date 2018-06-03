$(document).on('turbolinks:load', function() {
  $('#body-content').css('opacity', '1.0');

  $('.alert').addClass('animated alert-animation lightSpeedOut');

  $('#sidenav-open-btn').click(function() {
    $('.sidenav').css('width', '300px');
    $('body').css('background-color', 'rgba(0,0,0,0.4)');
    $('.primary-navbar, footer').css('background-color', '#999999');
    $(this).css('opacity', '0.1');
  });

  $('#sidenav-close-btn').click(function() {
    $('.sidenav').css('width', '0');
    $('body').css('background-color', 'white');
    $('.primary-navbar, footer').css('background-color', '#fab297');
    $('#sidenav-open-btn').css('opacity', '1.0')
  });


});

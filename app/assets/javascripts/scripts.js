$(document).on('turbolinks:load', function() {
  // $('#body-content').css('opacity', '1.0');

  $('.alert').addClass('animated alert-animation lightSpeedOut');

  $('#sidenav-open-btn').click(function() {
    $('.sidenav').css('width', '300px');
    $(this).css('opacity', '0.1');
  });

  $('#sidenav-close-btn').click(function() {
    $('.sidenav').css('width', '0');
    $('#sidenav-open-btn').css('opacity', '1.0')
  });


});

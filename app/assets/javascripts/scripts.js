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


  let state = 0;

  $('.hamburger').click(function() {
    if (state === 0) {
      $(this).toggleClass('is-active');

      $('.nav-container').css('top', '0').css('transition-delay', '0.1s');

      $('.nav-row').addClass('fadeInDown').removeClass('fadeOutUp');
      $('.body-content').addClass('fadeOut').removeClass('fadeIn');

      state = 1;

    } else
    if (state === 1) {
      $(this).toggleClass('is-active');

      $('.nav-container').css('top', '-100%').css('transition-delay', '0.4s');

      $('.nav-row').addClass('fadeOutUp').removeClass('fadeInDown');
      $('.body-content').addClass('fadeIn').removeClass('fadeOut');

      state = 0;

    }
  });

  $('.nav-item-overlay').click(function() {
    $('.nav-container').css('top', '-100%').css('transition-delay', '0.5s');
    $('.body-content').addClass('fadeIn').removeClass('fadeOut');
  });


});

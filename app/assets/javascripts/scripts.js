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


  // navbar expand/collapse
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

  // nav item click
  $('.nav-item').click(function() {
    $('.nav-container').css('top', '-100%').css('transition-delay', '0.5s');
    $('.body-content').addClass('fadeIn').removeClass('fadeOut');
  });


  // nav item hover
  $('#nav-item-1').hover(
    function() {
    $(this).find('.nav-item-overlay').css('background-image', 'linear-gradient(to right, rgba(77, 179, 237, 0.5), rgba(109, 177, 255, 0.5), rgba(153, 172, 255, 0.5), rgba(202, 163, 255, 0.5), rgba(248, 150, 253, 0.5))').css('border', '3px solid white').css('height', '80%').css('width', '80%');
    $(this).find('.overlay-header').css('top', '25%');
    $(this).find('.hover-fadeUp').css('top', '40%').css('opacity', '1.0');
  },
    function() {
    $(this).find('.nav-item-overlay').css('background-image', 'none').css('border', '0').css('height', '100%').css('width', '100%');
    $(this).find('.overlay-header').css('top', '40%');
    $(this).find('.hover-fadeUp').css('top', '70%').css('opacity', '0');
    }
  );

  $('#nav-item-2').hover(
    function() {
    $(this).find('.nav-item-overlay').css('background-image', 'linear-gradient(to right, rgba(77, 179, 237, 0.5), rgba(109, 177, 255, 0.5), rgba(153, 172, 255, 0.5), rgba(202, 163, 255, 0.5), rgba(248, 150, 253, 0.5))').css('border', '3px solid white').css('height', '80%').css('width', '80%');
    $(this).find('.overlay-header').css('top', '25%');
    $(this).find('.hover-fadeUp').css('top', '40%').css('opacity', '1.0');
  },
    function() {
    $(this).find('.nav-item-overlay').css('background-image', 'none').css('border', '0').css('height', '100%').css('width', '100%');
    $(this).find('.overlay-header').css('top', '40%');
    $(this).find('.hover-fadeUp').css('top', '70%').css('opacity', '0');
    }
  );

  $('#nav-item-3').hover(
    function() {
    $(this).find('.nav-item-overlay').css('background-image', 'linear-gradient(to right, rgba(77, 179, 237, 0.5), rgba(109, 177, 255, 0.5), rgba(153, 172, 255, 0.5), rgba(202, 163, 255, 0.5), rgba(248, 150, 253, 0.5))').css('border', '3px solid white').css('height', '80%').css('width', '80%');
    $(this).find('.overlay-header').css('top', '25%');
    $(this).find('.hover-fadeUp').css('top', '40%').css('opacity', '1.0');
  },
    function() {
    $(this).find('.nav-item-overlay').css('background-image', 'none').css('border', '0').css('height', '100%').css('width', '100%');
    $(this).find('.overlay-header').css('top', '40%');
    $(this).find('.hover-fadeUp').css('top', '70%').css('opacity', '0');
    }
  );



});

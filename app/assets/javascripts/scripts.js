$(document).on('turbolinks:load', function() {

  $('.alert').addClass('animated alert-animation lightSpeedOut');

  // navbar expand/collapse
  let state = 0;

  $('.hamburger').click(function() {

    if (state === 0) {
      $(this).toggleClass('is-active');

      $('.nav-container').css('top', '0').css('transition-delay', '0.1s');

      $('.primary-links-row').addClass('fadeInDown').removeClass('fadeOutUp');

      $('.secondary-links-row').addClass('fadeIn').removeClass('fadeOut');

      $('.body-content').addClass('fadeOut').removeClass('fadeIn');

      state = 1;

    } else
    if (state === 1) {

      $(this).toggleClass('is-active');

      $('.nav-container').css('top', '-150%').css('transition-delay', '0.4s');

      $('.primary-links-row').addClass('fadeOutUp').removeClass('fadeInDown');

      $('.secondary-links-row').addClass('fadeOut').removeClass('fadeIn');

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
  if ($(window).width() > 991) {
    $('.nav-item').hover(
      function() {
        $('.nav-item-overlay', this).css('background-image', 'linear-gradient(to right, rgba(77, 179, 237, 0.5), rgba(109, 177, 255, 0.5), rgba(153, 172, 255, 0.5), rgba(202, 163, 255, 0.5), rgba(248, 150, 253, 0.5))').css('border', '3px solid white').css('height', '80%').css('width', '80%');
        $('.overlay-header', this).css('top', '25%');
        $('.hover-fadeUp', this).css('top', '40%').css('opacity', '1.0');
    },
      function() {
        $('.nav-item-overlay', this).css('background-image', 'none').css('border', '0').css('height', '100%').css('width', '100%');
        $('.overlay-header', this).css('top', '40%');
        $('.hover-fadeUp', this).css('top', '70%').css('opacity', '0');
      }
    );
  };

  $('.action-background').hover(
    function() {
      $('i', this).addClass('animated pulse');
    },
    function() {
      $('i', this).removeClass('animated pulse');
    }
  )

  $('.social-icon').hover(
    function() {
      $(this).addClass('animated pulse');
    },
    function() {
      $(this).removeClass('animated pulse');
    }
  )



});

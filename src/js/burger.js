
const $ = require('jquery-slim');
require('gsap');

module.exports = function(burger) {

  if (!burger.length) {
    return;
  }

  const bubbles = $('#nav').find('.js-indic').eq(0).find('.bubble');

  function cloudTransition() {
    const bubbleArray = [
      bubbles.eq(2),
      bubbles.eq(1),
      bubbles.eq(0),
    ];

    TweenMax.staggerFromTo(bubbleArray, 0.3, {
      y: -$(window).height(),
      scale: 0,
    }, {
      y: -$(window).height() / 2,
      scale: 2,
      delay: 0.05
    }, 0.1);

    TweenMax.to(bubbleArray, 0.3, {scale: 1.5, delay: 0.2, onComplete: function() {
        TweenMax.to(bubbleArray, 0.6, {scale: 0.05, delay: 0.25});
        TweenMax.staggerTo(bubbleArray, 0.6, {y: $('#nav').height()}, 0.1);
      }
    });
  }

  function burgerClicked() {
    $(this).toggleClass('burger-clicked');
    if ($(this).hasClass('burger-clicked')) {
      $('body').css({
        overflowY: 'hidden'
      });
      $('#nav').addClass('show-nav');
      $('#social').addClass('show-social');

      cloudTransition();
    } else {
      $('body').css({
        overflowY: 'visible'
      });
      $('#nav').removeClass('show-nav');
      $('#social').removeClass('show-social');

      cloudTransition();
    }
  }

  burger.on('click', burgerClicked);
};

const $ = require('jquery-slim');
require('gsap');
const CSSRulePlugin = require('gsap/CSSRulePlugin');
const requestAnimFrame = require('./requestAnimFrame.js');
const throttle = require('./throttle.js');

module.exports = function(more) {
  if (!more.length) {
    return;
  }

  const cloud = $('#more-cloud');
  const bubbles = cloud.find('.js-bubble');
  const legs = $('.js-legs').find('.leg');
  const hooves = legs.find('.icon-hoove');
  const cotton = CSSRulePlugin.getRule('.more .leg.cotton::before');

  let isUp = false;
  let animated = false;
  let wScroll = $(window).scrollTop();
  let windowHeight = $(window).innerHeight();

  function randomizeLegs() {
    legs.sort(function() {
      return 0.5 - Math.random();
    });

    TweenMax.set(legs, {transformOrigin: 'bottom center'});
  }

  function moveCloudUp() {
    TweenMax.to(cloud, 1.6, {
      y: -cloud.innerHeight() - ($(window).innerHeight() / 100 * 5),
      ease: Power4.easeOut,
    });

    TweenMax.fromTo(bubbles, 1.6, {
      scale: 1,
    }, {
      scale: 1.2,
      ease: Power4.easeOut,
    });
  }

  function moveCloudDown() {
    TweenMax.to(cloud, 1.6, {
      y: -cloud.innerHeight(),
      ease: Power4.easeOut,
    });

    TweenMax.fromTo(bubbles, 1.6, {
      scale: 1.2,
    }, {
      scale: 1,
      ease: Power4.easeOut,
    });
  }

  function legsUp() {
    randomizeLegs();

    TweenMax.set(cotton, {
      cssRule: {
        scale: 0,
      }
    });

    TweenMax.set(hooves, {
      opacity: 0,
      yPercent: -125,
    });

    TweenMax.staggerFromTo(legs, 0.3, {
      scaleY: 0,
    }, {
      scaleY: 1,
      ease: Power4.easeOut,
      delay: 0.3,
    }, 0.05,
    () => {
      TweenMax.to(cotton, 0.6, {
        cssRule: {
          scale: 1,
        },
        ease: Elastic.easeOut.config(1, 0.5),
        onComplete: () => {
          TweenMax.to(hooves, 0.6, {
            opacity: 1,
            y: 0,
            yPercent: -100,
            ease: Power4.easeOut,
          });
        }
      });
    }
  );
  }

  function legsDown() {
    randomizeLegs();

    TweenMax.to(hooves, 0.6, {
      opacity: 0,
      yPercent: -125,
      ease: Power4.easeOut,
      delay: 0.3,
      onComplete: () => {
        TweenMax.to(cotton, 0.6, {
          cssRule: {
            scale: 0,
          },
          ease: Power4.easeIn,
          delay: 0.3,
          onComplete: () => {
            TweenMax.to(legs, 0.3, {
              scaleY: 0,
              ease: Power4.easeIn,
            });
          }
        });
      }
    });
  }

  function checkMachin() {
    if (!isUp && wScroll + windowHeight >= more.data('top') + more.data('height')) {
      isUp = true;
      animated = true;
      moveCloudUp();
      legsUp();
    } else if (isUp && wScroll + windowHeight < more.data('top') + more.data('height')) {
      moveCloudDown();
      legsDown();
      isUp = false;
    } else if (!animated) {

      TweenMax.set(cotton, {
        cssRule: {
          scale: 0,
        }
      });

      TweenMax.set(hooves, {
        opacity: 0,
        yPercent: -125,
      });

      TweenMax.set(legs, {
        scaleY: 0,
      });
    }
  }

  function resized() {
    windowHeight = $(window).innerHeight();

    more.data({
      'top': more.offset().top,
      'height': more.height(),
    });

    TweenMax.set(cotton, {
      cssRule: {
        x: 0,
        xPercent: -50,
      }
    });

    TweenMax.set(hooves, {
      x: 0,
      y: 0,
      xPercent: -50,
      yPercent: -100,
    });
  }

  more.data({
    'top': more.offset().top,
    'height': more.height(),
  });
  checkMachin();

  $(window).on('scroll', throttle(() => {
    requestAnimFrame(() => {
      wScroll = $(window).scrollTop();
      checkMachin();
    });
  }, 60));

  $(window).on('resize', throttle(() => {
    requestAnimFrame(() => {
      resized();
    });
  }, 60));
};

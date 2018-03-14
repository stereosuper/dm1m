const $ = require('jquery-slim');
require('gsap');
const CSSRulePlugin = require('gsap/CSSRulePlugin');
const requestAnimFrame = require('./requestAnimFrame.js');
const throttle = require('./throttle.js');

module.exports = function(more) {
  let isUp = false;
  let animated = false;
  let wScroll = $(window).scrollTop();

  if (!more.length) {
    return;
  }

  function moveCloudUp() {
    let cloud = $('#more-cloud');
    TweenMax.to(cloud, 1.6, {
      y: -cloud.innerHeight() - ($(window).innerHeight() / 100 * 3),
      ease: Power4.easeOut,
    });
  }

  function moveCloudDown() {
    let cloud = $('#more-cloud');
    TweenMax.to(cloud, 1.6, {
      y: -cloud.innerHeight(),
      ease: Power4.easeOut,
    });
  }

  function legsUp() {
    let legs = $('.js-legs').find('.leg');
    legs.sort(() => {
      return 0.5 - Math.random();
    });
    TweenMax.set(legs, {transformOrigin: 'bottom center'});

    const rule = CSSRulePlugin.getRule('.more .leg.cotton::before');
    TweenMax.set(rule, {
      cssRule: {
        scaleX: 0,
        scaleY: 0,
      }
    });

    const hooves = legs.find('.icon-hoove');
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
      TweenMax.to(rule, 0.3, {
        cssRule: {
          scaleX: 1,
          scaleY: 1,
        },
        ease: Elastic.easeOut.config(1, 0.5),
        onComplete: () => {
          TweenMax.to(hooves, 0.6, {
            opacity: 1,
            yPercent: 0,
            ease: Power4.easeOut,
          });
        }
      });
    }
  );
  }

  function legsDown() {
    let legs = $('.js-legs').find('.leg');
    const rule = CSSRulePlugin.getRule('.more .leg.cotton::before');
    const hooves = legs.find('.icon-hoove');

    legs.sort(function() {
      return 0.5 - Math.random();
    });

    TweenMax.set(legs, {transformOrigin: 'bottom center'});

    TweenMax.to(hooves, 0.6, {
      opacity: 0,
      yPercent: -125,
      ease: Power4.easeOut,
      delay: 0.3,
      onComplete: () => {
        TweenMax.to(rule, 0.6, {
          cssRule: {
            scaleX: 0,
            scaleY: 0,
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
    if (!isUp && wScroll + $(window).innerHeight() >= more.offset().top + more.height()) {
      isUp = true;
      animated = true;
      moveCloudUp();
      legsUp();
    } else if (isUp && wScroll + $(window).innerHeight() < more.offset().top + more.height()) {
      moveCloudDown();
      legsDown();
      isUp = false;
    } else if (!animated) {
      let legs = $('.js-legs').find('.leg');
      const rule = CSSRulePlugin.getRule('.more .leg.cotton::before');
      const hooves = legs.find('.icon-hoove');

      TweenMax.set(rule, {
        cssRule: {
          scaleX: 0,
          scaleY: 0,
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
    let legs = $('.js-legs').find('.leg');
    const rule = CSSRulePlugin.getRule('.more .leg.cotton::before');
    const hooves = legs.find('.icon-hoove');

    TweenMax.set(rule, {
      cssRule: {
        x: 0,
        xPercent: -50,
      }
    });

    TweenMax.set(hooves, {
      x: 0,
      xPercent: -50,
    });
  }

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

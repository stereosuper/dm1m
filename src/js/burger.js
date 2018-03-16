const $ = require('jquery-slim');
require('gsap');

const requestAnimFrame = require('./requestAnimFrame.js');
const throttle = require('./throttle.js');

module.exports = function(burger) {

    if (!burger.length) {
        return;
    }

    const bubbles = $('#nav').find('.js-indic').eq(0).find('.bubble');
    let windowHeight = $(window).height();
    let navHeight = $('#nav').height();

    function cloudTransition() {
        const bubbleArray = [
            bubbles.eq(2),
            bubbles.eq(1),
            bubbles.eq(0),
        ];

        TweenMax.staggerFromTo(bubbleArray, 0.3, {
            y: -windowHeight,
            scale: 0,
        }, {
            y: -windowHeight / 2,
            scale: 2,
            delay: 0.05
        }, 0.1);

        TweenMax.to(bubbleArray, 0.3, {
            scale: 1.5,
            delay: 0.2,
            onComplete: function() {
                TweenMax.to(bubbleArray, 0.6, {
                    scale: 0.05,
                    delay: 0.25
                });
                TweenMax.staggerTo(bubbleArray, 0.6, {
                    y: navHeight
                }, 0.1);
            }
        });
    }

    function burgerClicked() {
        $(this).toggleClass('burger-clicked');
        $('body').toggleClass('hide-overflow');
        $('#nav').toggleClass('show-nav');
        $('#social').toggleClass('show-social');

        cloudTransition();
    }

    function resizeHandler() {
        if ($('body').hasClass('is-mobile')) {
            TweenMax.set(bubbles, {
                x: 0,
                xPercent: -50
            });
        }
    }

    $(window).on('resize', throttle(function() {
        requestAnimFrame(resizeHandler);
    }, 60));

    burger.on('click', burgerClicked);
};

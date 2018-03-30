import { Power4 } from 'gsap';

const $ = require('jquery-slim');
require('gsap');

const requestAnimFrame = require('./requestAnimFrame.js');
const throttle = require('./throttle.js');

module.exports = function(burger) {
    if (!burger.length) {
        return;
    }

    const bubbles = $('#nav')
        .find('.js-indic')
        .eq(0)
        .find('.bubble');
    let windowHeight = $(window).height();
    let navHeight = $('#nav').height();

    function cloudTransition() {
        const bubbleArray = [bubbles.eq(2), bubbles.eq(1), bubbles.eq(0)];
        TweenMax.set($('.js-indic'), {
            autoAlpha: 1
        });
        TweenMax.set(bubbleArray, {
            x: 0,
            y: 0,
            xPercent: -50,
            yPercent: -50,
            scale: 0,
            transformOrigin: '0 0'
        });

        TweenMax.staggerFromTo(
            bubbleArray,
            0.618,
            {
                scale: 0
            },
            {
                scale: 1,
                ease: Power4.easeOut,
                onComplete: () => {
                    TweenMax.to(bubbles.eq(0), 0.3, {
                        x: 0,
                        y: $(window).height() * 0.25,
                        // ease: Power4.easeIn,
                        onComplete: function() {
                            TweenMax.set(bubbles.eq(0), {
                                transformOrigin: '100% 100%'
                            });
                            TweenMax.to(bubbles.eq(0), 0.3, {
                                x: $(window).width() * 0.25,
                                y: $(window).height() * 0.5,
                                ease: Power4.easeIn
                            });
                            TweenMax.to(bubbles.eq(0), 0.618, {
                                scale: 0,
                                delay: 0.3,
                                ease: Power4.easeOut
                            });
                        }
                    });

                    TweenMax.to(bubbles.eq(1), 0.3, {
                        x: $(window).width() * 0.25,
                        y: $(window).height() * 0.25,
                        // ease: Power4.easeIn,
                        onComplete: function() {
                            TweenMax.set(bubbles.eq(1), {
                                transformOrigin: '100% 100%'
                            });
                            TweenMax.to(bubbles.eq(1), 0.3, {
                                x: $(window).width() * 0.5,
                                y: $(window).height() * 0.5,
                                ease: Power4.easeIn
                            });
                            TweenMax.to(bubbles.eq(1), 0.618, {
                                scale: 0,
                                delay: 0.3,
                                ease: Power4.easeOut
                            });
                        }
                    });

                    TweenMax.to(bubbles.eq(2), 0.3, {
                        x: $(window).width() * 0.25,
                        y: $(window).height() * 0.25,
                        // ease: Power4.easeIn,
                        onComplete: function() {
                            TweenMax.set(bubbles.eq(2), {
                                transformOrigin: '100% 100%'
                            });
                            TweenMax.to(bubbles.eq(2), 0.3, {
                                x: $(window).width() * 0.25,
                                y: $(window).height() * 0.5,
                                ease: Power4.easeIn
                            });
                            TweenMax.to(bubbles.eq(2), 0.618, {
                                scale: 0,
                                delay: 0.3,
                                ease: Power4.easeOut,
                                onComplete: () => {
                                    // HACK: visibility hidden and opacity 0 to allow click on menu items
                                    TweenMax.set($('.js-indic'), {
                                        autoAlpha: 0
                                    });
                                }
                            });
                        }
                    });
                }
            },
            0.1
        );
    }

    function burgerClicked() {
        $(this).toggleClass('burger-clicked');
        $('body').toggleClass('hide-overflow');
        $('#nav').toggleClass('show-nav');
        $('#social').toggleClass('show-social');

        cloudTransition();
    }

    function resizeHandler() {
        if (burger.css('display') !== 'none') {
            TweenMax.set($('.js-indic'), {
                x: 0,
                y: 0
            });

            TweenMax.set(bubbles, {
                x: 0,
                y: 0,
                xPercent: -50,
                yPercent: -50,
                scale: 0,
                transformOrigin: '0 0'
            });
        }
    }

    $(window).on(
        'resize',
        throttle(function() {
            requestAnimFrame(resizeHandler);
        }, 60)
    );

    burger.on('click', burgerClicked);
};

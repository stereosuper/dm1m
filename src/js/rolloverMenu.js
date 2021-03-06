const $ = require('jquery-slim');
require('gsap');

const requestAnimFrame = require('./requestAnimFrame.js');
const throttle = require('./throttle.js');

module.exports = function(nav) {
    if (!nav.length) return;

    let current = nav.find('.current-menu-item');
    const bubbles = nav.find('.bubble');
    const indicator = nav.find('.js-indic'),
        indicatorSemiWidth = indicator.width() / 2;

    const illus = $('#logoIllus');
    const leftEye = illus.find('.left-eye'),
        rightEye = illus.find('.right-eye'),
        mouth = illus.find('.mouth');

    function moveBubble(bubble, distance, scale, timing) {
        TweenMax.to(bubble, timing, {
            x: distance,
            scaleY: scale,
            scaleX: 1.1,
            onComplete: function() {
                TweenMax.to(bubble, timing, { x: '0px', scale: 1 });
            }
        });
    }

    function moveIndic(newX, timing) {
        if (indicator.data('x') < newX) {
            // to the right
            moveBubble(bubbles.eq(1), '-8px', 0.9, timing / 2);
            moveBubble(bubbles.eq(0), '-11px', 1.1, timing / 2 + 0.1);
            moveBubble(bubbles.eq(4), '6px', 0.85, timing / 2);
            moveBubble(bubbles.eq(5), '8px', 1.15, timing / 2 + 0.1);
        } else {
            // to the left
            moveBubble(bubbles.eq(1), '8px', 0.9, timing / 2);
            moveBubble(bubbles.eq(2), '11px', 1.1, timing / 2 + 0.1);
            moveBubble(bubbles.eq(4), '-6px', 0.85, timing / 2);
            moveBubble(bubbles.eq(3), '-8px', 1.15, timing / 2 + 0.1);
        }

        TweenMax.to(indicator, timing, {
            x: newX + 'px',
            opacity: 1,
            onComplete: function() {
                indicator.data('x', newX);
            }
        });
    }

    function setIndic() {
        if (current.length) {
            current.data({
                x:
                    current.position().left +
                    current.width() / 2 -
                    indicatorSemiWidth
            });
            TweenMax.set(indicator, { x: current.data('x') + 'px' });
            indicator.data('x', current.data('x'));
            TweenMax.to(bubbles, 0.3, { scale: 1 });
        } else {
            indicator.data('x', nav.width() / 2 - indicatorSemiWidth);
            TweenMax.set(indicator, { x: indicator.data('x') + 'px' });
        }
    }

    function activateSheep(indexHovered) {
        const leftEye = illus.find('.js-left-eye');
        const rightEye = illus.find('.js-right-eye');
        const leftCheek = illus.find('.js-left-cheek');
        const rightCheek = illus.find('.js-right-cheek');
        const mouth = illus.find('.js-mouth');

        illus.removeClass('badass');

        switch (indexHovered) {
            case 0:
                // new
                // rougir lien home ou new
                illus.addClass('visible-cheeks sheep-blushing');
                illus.removeClass('sheep-winking sheep-surprised');
                break;
            case 1:
                // projects
                // wink
                illus.removeClass(
                    'visible-cheeks sheep-blushing sheep-surprised'
                );
                illus.addClass('sheep-winking');
                break;
            case 2:
                // agency
                // surprise
                illus.removeClass(
                    'visible-cheeks sheep-blushing sheep-winking'
                );
                illus.addClass('sheep-surprised');
                break;
            default:
                break;
        }
    }

    function deactivateSheep() {
        const leftEye = illus.find('.js-left-eye');
        const rightEye = illus.find('.js-right-eye');
        const mouth = illus.find('.js-mouth');

        illus.removeClass('sheep-blushing sheep-winking sheep-surprised');

        if ($('body').hasClass('error404')) {
            illus.addClass('badass');
        } else {
            illus.removeClass('visible-cheeks');
        }
    }

    current = current.length ? current : nav.find('.current_page_parent');

    if (window.innerWidth > 580) {
        setIndic();
    }

    if ($('body').hasClass('error404')) {
        $('#logoIllus').addClass('badass');
    }

    if (window.innerWidth > 580) {
        nav
            .on('mouseenter focusin', 'a', function() {
                TweenMax.to(bubbles, 0.3, { scale: 1 });
                moveIndic(
                    $(this)
                        .parents('li')
                        .position().left +
                        $(this)
                            .parents('li')
                            .width() /
                            2 -
                        indicatorSemiWidth,
                    0.6
                );

                activateSheep(
                    $(this)
                        .parents('li')
                        .index()
                );
            })
            .on('mouseleave focusout', 'a', function() {
                current.length
                    ? moveIndic(current.data('x'), 0.4)
                    : TweenMax.to(bubbles, 0.3, { scale: 0 });

                deactivateSheep();
            });

        $('.wrapper-logo a')
            .on('mouseenter focusin', function() {
                illus.addClass('visible-cheeks sheep-blushing');
            })
            .on('mouseleave focusout', function() {
                illus.removeClass('visible-cheeks sheep-blushing');
            });
    }

    $(window).on(
        'resize',
        throttle(function() {
            if (
                window.innerWidth > 580 &&
                $('#burger').css('display') === 'none'
            ) {
                requestAnimFrame(setIndic);
            }
        }, 60)
    );
};

const $ = require('jquery-slim');

// require('gsap');
require('gsap/CSSPlugin');
const TweenLite = require('gsap/TweenLite');


module.exports = function( nav ){

    if( !nav.length ) return;

    
    const current = nav.find('.current-menu-item'), bubbles = nav.find('.bubble');
    const indicator = nav.find('.js-indic'), indicatorSemiWidth = indicator.width()/2;
    const illus = $('.wrapper-logo .wrapper-illus');
    const leftEye = illus.find('.left-eye'), rightEye = illus.find('.right-eye'), mouth = illus.find('.mouth');


    function moveBubble( bubble, distance, scale, timing ){
        TweenLite.to(bubble, timing, {x: distance, scaleY: scale, scaleX: 1.1, onComplete: function(){
            TweenLite.to(bubble, timing, {x: '0px', scale: 1});
        }});
    }

    function moveIndic( newX, timing ){
        if( indicator.data('x') < newX ){
            // to the right
            moveBubble( bubbles.eq(1), '-8px', 0.9, timing/2 );
            moveBubble( bubbles.eq(0), '-11px', 1.1, timing/2+0.1 );
            moveBubble( bubbles.eq(4), '6px', 0.85, timing/2 );
            moveBubble( bubbles.eq(5), '8px', 1.15, timing/2+0.1 );
        }else{
            // to the left
            moveBubble( bubbles.eq(1), '8px', 0.9, timing/2 );
            moveBubble( bubbles.eq(2), '11px', 1.1, timing/2+0.1 );
            moveBubble( bubbles.eq(4), '-6px', 0.85, timing/2 );
            moveBubble( bubbles.eq(3), '-8px', 1.15, timing/2+0.1 );
        }

        TweenLite.to(indicator, timing, {x: newX + 'px', opacity: 1, onComplete: function(){
            indicator.data('x', newX);
        }});
    }

    function activateSheep(indexHovered){
        switch (indexHovered) {
            case 0:
                // new
                break;
            case 1:
                // projects
                break;
            case 2:
                // agency
                break;
            default:
                break;
        }
    }


    if( current.length ){
        current.data({'x': (current.position().left + current.width()/2) - indicatorSemiWidth});
        TweenLite.set(indicator, {x: current.data('x') + 'px'});
        indicator.data('x', current.data('x'));
        TweenLite.to(bubbles, 0.3, {scale: 1});
    }else{
        indicator.data('x', (nav.width()/2 - indicatorSemiWidth));
        TweenLite.set(indicator, {x: indicator.data('x') + 'px'});
    }

    nav.on('mouseenter focusin', 'a', function(){
        TweenLite.to(bubbles, 0.3, {scale: 1});
        moveIndic( ($(this).parents('li').position().left + $(this).parents('li').width()/2) - indicatorSemiWidth, 0.6 );
        activateSheep($(this).parents('li').index());
    }).on('mouseleave focusout', 'a', function(){
        current.length ? moveIndic( current.data('x'), 0.4 ) : TweenLite.to(bubbles, 0.3, {scale: 0});

    });
}

const $ = require('jquery-slim');
require('gsap');

const requestAnimFrame = require('./requestAnimFrame.js');
const throttle = require('./throttle.js');


module.exports = function( nav ){

    if( !nav.length ) return;


    let current = nav.find('.current-menu-item')
    const bubbles = nav.find('.bubble');
    const indicator = nav.find('.js-indic'), indicatorSemiWidth = indicator.width()/2;

    const illus = $('#logoIllus');
    const leftEye = illus.find('.left-eye'), rightEye = illus.find('.right-eye'), mouth = illus.find('.mouth');


    function moveBubble( bubble, distance, scale, timing ){
        TweenMax.to(bubble, timing, {x: distance, scaleY: scale, scaleX: 1.1, onComplete: function(){
            TweenMax.to(bubble, timing, {x: '0px', scale: 1});
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

        TweenMax.to(indicator, timing, {x: newX + 'px', opacity: 1, onComplete: function(){
            indicator.data('x', newX);
        }});
    }

    function setIndic(){
        if( current.length ){

            current.data({'x': (current.position().left + current.width()/2) - indicatorSemiWidth});
            TweenMax.set(indicator, {x: current.data('x') + 'px'});
            indicator.data('x', current.data('x'));
            TweenMax.to(bubbles, 0.3, {scale: 1});

        }else{

            indicator.data('x', (nav.width()/2 - indicatorSemiWidth));
            TweenMax.set(indicator, {x: indicator.data('x') + 'px'});

        }
    }

    function activateSheep( indexHovered ){
        const logo = $('#logoIllus');
        const leftEye = logo.find('.js-left-eye');
        const rightEye = logo.find('.js-right-eye');
        const leftCheek = logo.find('.js-left-cheek');
        const rightCheek = logo.find('.js-right-cheek');
        const mouth = logo.find('.js-mouth');

        logo.removeClass('badass');

        switch( indexHovered ){
            case 0:
                // new
                // rougir lien home ou new
                logo.addClass('visible-cheeks');

                leftEye.css({
                  backgroundImage: 'url(\'wp-content/themes/dm1m/layoutImg/sheep-blushing/eye-up.svg\')',
                  transform: 'none',
                });

                rightEye.css({
                  backgroundImage: 'url(\'wp-content/themes/dm1m/layoutImg/sheep-blushing/eye-up.svg\')',
                  transform: 'none',
                });

                leftCheek.css({
                  top: '47.5px',
                  backgroundImage: 'url(\'wp-content/themes/dm1m/layoutImg/sheep-blushing/blush.svg\')',
                  transform: 'scale(1)',
                });

                rightCheek.css({
                  top: '47.5px',
                  backgroundImage: 'url(\'wp-content/themes/dm1m/layoutImg/sheep-blushing/blush.svg\')',
                  transform: 'scale(1)',
                });

                mouth.css({
                  backgroundImage: 'url(\'wp-content/themes/dm1m/layoutImg/sheep-blushing/oh-mouth.svg\')',
                  height: '9px',
                  transform: 'translateX(-50%) scale(1.4)',
                });
                break;
            case 1:
                // projects
                // wink
                if(logo.hasClass('visible-cheeks')) {
                  logo.removeClass('visible-cheeks');
                }

                leftEye.css({
                  backgroundImage: 'url(\'wp-content/themes/dm1m/layoutImg/open-eye.svg\')',
                });

                rightEye.css({
                  backgroundImage: 'url(\'wp-content/themes/dm1m/layoutImg/sheep-wink/eye-wink.svg\')',
                  transform: 'none',
                });

                mouth.css({
                  backgroundImage: 'url(\'wp-content/themes/dm1m/layoutImg/mouth.svg\')',
                  transform: 'translateX(-50%)',
                });
                break;
            case 2:
                // agency
                // surprise
                if(logo.hasClass('visible-cheeks')) {
                  logo.removeClass('visible-cheeks');
                }

                leftEye.css({
                  backgroundImage: 'url(\'wp-content/themes/dm1m/layoutImg/sheep-surprise/round-eye.svg\')',
                  transform: 'none',
                });

                rightEye.css({
                  backgroundImage: 'url(\'wp-content/themes/dm1m/layoutImg/sheep-surprise/pupil.svg\')',
                  transform: 'scale(0.5)',
                });

                mouth.css({
                  backgroundImage: 'url(\'wp-content/themes/dm1m/layoutImg/sheep-surprise/surprised-mouth.svg\')',
                  height: '9px',
                  transform: 'translateX(-50%) scale(1.4)',
                });
                break;
            default:
                break;
        }
    }

    function deactivateSheep() {
      const logo = $('#logoIllus');
      const leftEye = logo.find('.js-left-eye');
      const rightEye = logo.find('.js-right-eye');
      const leftCheek = logo.find('.js-left-cheek');
      const rightCheek = logo.find('.js-right-cheek');
      const mouth = logo.find('.js-mouth');

      if ($('body').hasClass('error404')) {
        logo.addClass('badass');

      } else {
        if(logo.hasClass('visible-cheeks')) {
          logo.removeClass('visible-cheeks');
        }

        leftEye.css({
          backgroundImage: 'url(\'wp-content/themes/dm1m/layoutImg/open-eye.svg\')',
        });

        rightEye.css({
          backgroundImage: 'url(\'wp-content/themes/dm1m/layoutImg/open-eye.svg\')',
          transform: 'none',
        });

        mouth.css({
          backgroundImage: 'url(\'wp-content/themes/dm1m/layoutImg/mouth.svg\')',
          height: '10px',
          transform: 'translateX(-50%) scale(1)',
        });
      }
    }


    current = current.length ? current : nav.find('.current_page_parent');

    setIndic();

    if($('body').hasClass('error404')) {
      $('#logoIllus').addClass('badass');
    }

    nav.on('mouseenter focusin', 'a', function(){

        TweenMax.to(bubbles, 0.3, {scale: 1});
        moveIndic( ($(this).parents('li').position().left + $(this).parents('li').width()/2) - indicatorSemiWidth, 0.6 );
        activateSheep( $(this).parents('li').index() );

    }).on('mouseleave focusout', 'a', function(){

        current.length ? moveIndic( current.data('x'), 0.4 ) : TweenMax.to(bubbles, 0.3, {scale: 0});

        deactivateSheep();
    });


    $(window).on('resize', throttle(function(){

        requestAnimFrame( setIndic );

    }, 60));
}

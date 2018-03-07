var $ = require('jquery-slim');
require('gsap');

window.requestAnimFrame = require('./requestAnimFrame.js');
const throttle = require('./throttle.js');

module.exports = function( container, sheep, windowWidth, windowHeight ){

    if( !container.length || !sheep.length ) return;


    let x, y, mouseX, mouseY, distance, rad, pupil;
    const eyeLeft = container.find('#eyeLeft'), eyeRight = container.find('#eyeRight');
    const legs = sheep.find('.js-leg'), feet = sheep.find('.js-foot'), forearms = sheep.find('.js-forearm');


    function clamp( number, min, max ){
        return Math.max( min, Math.min(number, max) );
    }

    function resizeHandler(){
        windowWidth = window.outerWidth;
        windowHeight = $(window).height();
    }

    function moveEye( eye, e ){
        pupil = eye.find('.js-pupil');

        mouseX = e.clientX;
        mouseY = e.clientY;

        x = mouseX - windowWidth / 2;
        y = mouseY - windowHeight / 2;
        distance = Math.sqrt( Math.pow(x, 2) + Math.pow(y, 2) );
        rad = Math.atan2(y, x);

        TweenMax.to(pupil, 0.1, {x: clamp(distance * Math.cos(rad) / 28, -7, 7) + 'px', y: clamp(distance * Math.sin(rad) / 8, 2, 15) + 'px'});
    }


    TweenMax.set([legs.eq(0), forearms.eq(3)], {transformOrigin: '100% 0'});
    TweenMax.set(feet.eq(0), {transformOrigin: '50% -90%'});
    TweenMax.set(feet.eq(1), {transformOrigin: '0 -70%'});
    TweenMax.set(legs.eq(2), {transformOrigin: '-20% -80%'});
    TweenMax.set(feet.eq(2), {transformOrigin: '-50% -50%'});
    TweenMax.set(legs.eq(3), {transformOrigin: '120% -80%'});
    TweenMax.set(feet.eq(3), {transformOrigin: '145% -45%'});

    TweenMax.set(sheep.find('#earLeft'), {transformOrigin: '100% 0'});
    TweenMax.set(sheep.find('#earRight'), {transformOrigin: '0 0'});

    container.on('mouseenter', '.js-cloud', function(){

        TweenMax.to(sheep.find('#earLeft').eq(0), 0.3, {rotation: 40, onComplete: function(){
            TweenMax.to(sheep.find('#earLeft').eq(0), 0.15, {rotation: 0});
        }});
        TweenMax.to(sheep.find('#earRight').eq(0), 0.3, {rotation: -40, onComplete: function(){
            TweenMax.to(sheep.find('#earRight').eq(0), 0.15, {rotation: 0});
        }});

        switch( $(this).index() ){
            case 0:

                TweenMax.to(legs.eq(0), 0.3, {rotation: 41});
                TweenMax.to([forearms.eq(0), feet.eq(0)], 0.3, {rotation: 48});

                TweenMax.to([forearms.eq(1), feet.eq(1)], 0.3, {rotation: -48});

                TweenMax.to([forearms.eq(2), feet.eq(2)], 0.3, {rotation: 90});

                TweenMax.to(legs.eq(3), 0.3, {rotation: 90});
                TweenMax.to([forearms.eq(3), feet.eq(3)], 0.3, {rotation: -46});
                break;

            case 1:

                TweenMax.to(legs.eq(0), 0.3, {rotation: 90});
                TweenMax.to([forearms.eq(0), feet.eq(0)], 0.3, {rotation: 48});

                TweenMax.to(legs.eq(1), 0.3, {rotation: -90});
                TweenMax.to([forearms.eq(1), feet.eq(1)], 0.3, {rotation: -48});

                TweenMax.to(legs.eq(3), 0.3, {rotation: 90});
                break;

            case 2:

                TweenMax.to(legs.eq(0), 0.3, {rotation: 41});
                TweenMax.to([forearms.eq(0), feet.eq(0)], 0.3, {rotation: 48});

                TweenMax.to(legs.eq(1), 0.3, {rotation: -41});
                TweenMax.to([forearms.eq(1), feet.eq(1)], 0.3, {rotation: -48});

                TweenMax.to(legs.eq(2), 0.3, {rotation: -90});
                TweenMax.to([forearms.eq(2), feet.eq(2)], 0.3, {rotation: 90});

                TweenMax.to([forearms.eq(3), feet.eq(3)], 0.3, {rotation: -46});
                break;
        }

    }).on('mouseleave', '.js-cloud', function(){

        TweenMax.to([legs, forearms, feet], 0.3, {rotation: 0});

    });
    
    $(window).on('mousemove', function(e){

        e.preventDefault();
        moveEye( eyeLeft, e );
        moveEye( eyeRight, e );

    }).on('resize', throttle(function(){

        requestAnimFrame(resizeHandler);

    }, 60));

}

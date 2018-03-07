var $ = require('jquery-slim');
require('gsap');

window.requestAnimFrame = require('./requestAnimFrame.js');
const throttle = require('./throttle.js');

module.exports = function( container, sheep, windowWidth, windowHeight ){

    if( !container.length || !sheep.length ) return;


    var x, y, mouseX, mouseY, distance, rad, pupil;


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


    TweenMax.set([sheep.find('.js-leg').eq(0), sheep.find('.js-forearm').eq(3)], {transformOrigin: '100% 0'});
    TweenMax.set(sheep.find('.js-foot').eq(0), {transformOrigin: '50% -90%'});
    TweenMax.set(sheep.find('.js-foot').eq(1), {transformOrigin: '0 -70%'});
    TweenMax.set(sheep.find('.js-leg').eq(2), {transformOrigin: '-20% -80%'});
    TweenMax.set(sheep.find('.js-foot').eq(2), {transformOrigin: '-50% -50%'});
    TweenMax.set(sheep.find('.js-leg').eq(3), {transformOrigin: '120% -80%'});
    TweenMax.set(sheep.find('.js-foot').eq(3), {transformOrigin: '145% -45%'});


    container.on('mouseenter', '.js-cloud', function(){

        switch( $(this).index() ){
            case 0:

                TweenMax.to(sheep.find('.js-leg').eq(0), 0.3, {rotation: 41});
                TweenMax.to([sheep.find('.js-forearm').eq(0), sheep.find('.js-foot').eq(0)], 0.3, {rotation: 48});

                TweenMax.to([sheep.find('.js-forearm').eq(1), sheep.find('.js-foot').eq(1)], 0.3, {rotation: -48});

                TweenMax.to([sheep.find('.js-forearm').eq(2), sheep.find('.js-foot').eq(2)], 0.3, {rotation: 90});

                TweenMax.to(sheep.find('.js-leg').eq(3), 0.3, {rotation: 90});
                TweenMax.to([sheep.find('.js-forearm').eq(3), sheep.find('.js-foot').eq(3)], 0.3, {rotation: -46});
                break;

            case 1:

                TweenMax.to(sheep.find('.js-leg').eq(0), 0.3, {rotation: 90});
                TweenMax.to([sheep.find('.js-forearm').eq(0), sheep.find('.js-foot').eq(0)], 0.3, {rotation: 48});

                TweenMax.to(sheep.find('.js-leg').eq(1), 0.3, {rotation: -90});
                TweenMax.to([sheep.find('.js-forearm').eq(1), sheep.find('.js-foot').eq(1)], 0.3, {rotation: -48});

                TweenMax.to(sheep.find('.js-leg').eq(3), 0.3, {rotation: 90});
                break;

            case 2:

                TweenMax.to(sheep.find('.js-leg').eq(0), 0.3, {rotation: 41});
                TweenMax.to([sheep.find('.js-forearm').eq(0), sheep.find('.js-foot').eq(0)], 0.3, {rotation: 48});

                TweenMax.to(sheep.find('.js-leg').eq(1), 0.3, {rotation: -41});
                TweenMax.to([sheep.find('.js-forearm').eq(1), sheep.find('.js-foot').eq(1)], 0.3, {rotation: -48});

                TweenMax.to(sheep.find('.js-leg').eq(2), 0.3, {rotation: -90});
                TweenMax.to([sheep.find('.js-forearm').eq(2), sheep.find('.js-foot').eq(2)], 0.3, {rotation: 90});

                TweenMax.to([sheep.find('.js-forearm').eq(3), sheep.find('.js-foot').eq(3)], 0.3, {rotation: -46});
                break;
        }

    }).on('mouseleave', '.js-cloud', function(){

        TweenMax.to([sheep.find('.js-leg'), sheep.find('.js-forearm'), sheep.find('.js-foot')], 0.3, {rotation: 0});

    });
    
    $(window).on('mousemove', function(e){

        e.preventDefault();
        moveEye( container.find('#eyeLeft'), e );
        moveEye( container.find('#eyeRight'), e );

    }).on('resize', throttle(function(){

        requestAnimFrame(resizeHandler);

    }, 60));

}

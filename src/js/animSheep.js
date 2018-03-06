var $ = require('jquery-slim');
require('gsap');

module.exports = function( container, sheep ){

    if( !container.length || !sheep.length ) return;

    TweenMax.set(sheep.find('.js-leg').eq(0), {transformOrigin: '100% 0'});
    TweenMax.set(sheep.find('.js-forearm').eq(0), {transformOrigin: '0 0'});
    TweenMax.set(sheep.find('.js-foot').eq(0), {transformOrigin: '50% -90%'});

    TweenMax.set(sheep.find('.js-leg').eq(3), {transformOrigin: '120% -80%'});
    TweenMax.set(sheep.find('.js-forearm').eq(3), {transformOrigin: '100% 0'});
    TweenMax.set(sheep.find('.js-foot').eq(3), {transformOrigin: '145% -45%'});

    container.on('mouseenter', '.js-cloud', function(){

        switch( $(this).index() ){
            case 0:
                TweenMax.to(sheep.find('.js-leg').eq(0), 0.3, {rotation: 41});
                TweenMax.to(sheep.find('.js-forearm').eq(0), 0.3, {rotation: 48});
                TweenMax.to(sheep.find('.js-foot').eq(0), 0.3, {rotation: 48});

                TweenMax.to(sheep.find('.js-leg').eq(3), 0.3, {rotation: 90});
                TweenMax.to(sheep.find('.js-forearm').eq(3), 0.3, {rotation: -46});
                TweenMax.to(sheep.find('.js-foot').eq(3), 0.3, {rotation: -46});
                break;
            case 1:
                break;
            case 2:
                break;
        }

    }).on('mouseleave', '.js-cloud', function(){

        TweenMax.to(sheep.find('.js-leg'), 0.3, {rotation: 0});
        TweenMax.to(sheep.find('.js-forearm'), 0.3, {rotation: 0});
        TweenMax.to(sheep.find('.js-foot'), 0.3, {rotation: 0});

    });

}

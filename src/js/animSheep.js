var $ = require('jquery-slim');
require('gsap');

module.exports = function( container, sheep ){

    if( !container.length || !sheep.length ) return;

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

}

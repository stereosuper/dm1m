var $ = require('jquery-slim');
require('gsap');

module.exports = function(grid){
    if(!grid.length || $('body').hasClass('is-mobile')) return;
    const tiles = grid.find('.js-hover');

    const getDir = (e, el) => {
        const w = el.width();
        const h = el.height();
        const offset = el.offset();
        const x = (e.pageX - offset.left - (w / 2)) * (w > h ? (h / w) : 1);
        const y = (e.pageY - offset.top - (h / 2)) * (h > w ? (w / h) : 1);
        const d = Math.round((((Math.atan2(y, x) * (180 / Math.PI)) + 180 ) / 90 ) + 3 )  % 4;

        return d;
    };


    const addClass = (e, el, state) => {
        const direction = e === 'focus' ? 0 : getDir(e, el);
        const clouds = el.find('.clouds');
        const overlay = el.find('.js-overlay');
        const w = el.width(), h = el.height();

        let cloudsFrom, overlayFrom;


        switch ( direction ) {
            case 0 :
                cloudsFrom = {y: -h, x: 0};
                overlayFrom = {y: -10, x: 0, opacity: 0};
            break;
            case 1 :
                cloudsFrom = {x: w, y: 0};
                overlayFrom = {x: 10, y: 0, opacity: 0};
            break;
            case 2 :
                cloudsFrom = {y: h, x: 0};
                overlayFrom = {y: 10, x: 0, opacity: 0};
            break;
            case 3 :
                cloudsFrom = {x: -w, y: 0};
                overlayFrom = {x: -10, y: 0, opacity: 0};
            break;
        }

        TweenMax.killTweensOf([clouds, overlay]);

        if(state === 'in'){
            TweenMax.set(clouds, {opacity: 1});
            TweenMax.staggerFromTo(clouds, 0.6, cloudsFrom, {y: 0, x: 0, delay: 0.05}, 0.1);
            TweenMax.to(clouds, 0.6, {scale: 1.8, delay: 0.2});
            TweenMax.fromTo(overlay, 0.5, overlayFrom, {y: 0, x: 0, opacity: 1, delay: 0.3});
        }else{
            TweenMax.killTweensOf(clouds);
            TweenMax.to(overlay, 0.5, overlayFrom);
            TweenMax.to(clouds, 0.6, {scale: 0.05, delay: 0.25});
            TweenMax.staggerTo(clouds, 0.6, cloudsFrom, 0.1);
        }
    };


    tiles.each(function(){
        $(this).hover(function(e){
            addClass(e, $(this), 'in');
        }, function(e){
            addClass(e, $(this), 'out');
        });
        $(this).on('focusin', function(){
            addClass('focus', $(this), 'in');
        });
        $(this).on('focusout', function(){
            addClass('focus', $(this), 'out');
        });
    });

};

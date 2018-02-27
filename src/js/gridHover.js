var $ = require('jquery-slim');
require('gsap');

window.requestAnimFrame = require('./requestAnimFrame.js');

module.exports = function(grid){
    if(!grid.length) return;
    const tiles = grid.find('> article > a');

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
        const direction = getDir(e, el);
        let suffixe;
        const clouds = el.find('.clouds');
        const w = el.width();
        const h = el.height();
        el.removeClass(function (index, className) {
            return (className.match (/(((^|\s)out-\S+)|((^|\s)in-\S+))/g) || []).join(' ');
        });

        let where;
        

        switch ( direction ) {
            case 0 : 
                suffixe = '-top';
                where = {y: -h, x:0};
            break;
            case 1 : 
                suffixe = '-right';
                where = {x: w, y:0};
            break;
            case 2 : 
                suffixe = '-bottom';
                where = {y: h, x:0};
            break;
            case 3 : 
                suffixe = '-left';
                where = {x: -w, y:0};
            break;
        }

        if(state === 'in'){
            TweenMax.killTweensOf(clouds);
            TweenMax.set(clouds, {opacity: 1});
            TweenMax.staggerFromTo(clouds, 0.6, where, {y: 0, x: 0, delay: 0.05}, 0.1);
            TweenMax.to(clouds, 0.6, {scale: 1.8, delay: 0.2});
        }else{
            TweenMax.killTweensOf(clouds);
            TweenMax.to(clouds, 0.6, {scale: 0.05, delay: 0.05});
            TweenMax.staggerTo(clouds, 0.6, where, 0.1);
        }    
    };


    tiles.each(function(){
        $(this).hover(function(e){
            addClass(e, $(this), 'in');
        }, function(e){
            addClass(e, $(this), 'out');
        });
    });

};

var $ = require('jquery-slim');
require('gsap');

window.requestAnimFrame = require('./requestAnimFrame.js');

module.exports = function(grid){
    if(!grid.length) return;
    const tiles = grid.find('> article > a');

    const getDir = (e, el) => {
        const w = el.width(),
            h = el.height(),
            x = (e.pageX - el.offset().left - (w / 2) * (w > h ? (h / w) : 1)),
            y = (e.pageY - el.offset().top - (h / 2) * (h > w ? (w / h) : 1)),
            d = Math.round( Math.atan2(y, x) / 1.57079633 + 5 ) % 4;

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
        const tl = new TimelineMax();

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

        if(state === 'out'){
            where.delay = 0.1;
            where.ease = Power2.easeOut;
            tl.add([
                TweenMax.to(clouds, 0.6, {scale: 0.05, ease: Power2.easeOut}),
                TweenMax.staggerTo(clouds, 0.6, where, 0.05)
            ]);
            console.log('out');
        }else{
            

            tl.set(clouds, {opacity: 1})
            .staggerFromTo(clouds, 0.6, where, {y: 0, x: 0, ease: Power2.easeOut}, 0.05)
            .to(clouds, 0.6, {scale: 1.8, delay: -0.6, ease: Power2.easeOut});
            console.log('in');
        }    
    };


    tiles.each(function(){
        $(this).on('mouseover', function(e){
            addClass(e, $(this), 'in');
        });

        $(this).on('mouseout', function(e){
            addClass(e, $(this), 'out');
        });
    });

};

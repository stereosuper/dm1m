var $ = require('jquery-slim');

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

        el.removeClass(function (index, className) {
            return (className.match (/(((^|\s)out-\S+)|((^|\s)in-\S+))/g) || []).join(' ');
        });

        switch ( direction ) {
            case 0 : suffixe = '-top';    break;
            case 1 : suffixe = '-right';  break;
            case 2 : suffixe = '-bottom'; break;
            case 3 : suffixe = '-left';   break;
        }

        el.addClass(state + suffixe);
        console.log(state + suffixe);
        

    };


    tiles.each(function(i){
        $(this).on('mouseover', function(e){
            addClass(e, $(this), 'in');
        });

        $(this).on('mouseout', function(e){
            addClass(e, $(this), 'out');
        });
    });

};

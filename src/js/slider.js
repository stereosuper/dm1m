var $ = require('jquery-slim');
require('gsap');

module.exports = function(slider){
    if(!slider.length) return;

    const firstPuce = slider.find('.bullet').eq(0);
    const clouds = slider.find('.clouds');
    

    const showSlide = ( puce ) => {

        const data = puce.data('slide');


        const slide = slider.find(`.slide[data-slide='${data}']`),
            title = slider.find(`.h1[data-slide='${data}']`),
            subtitle = slider.find(`.h2[data-slide='${data}']`);

        const prevSlide = slider.find('.slide.active'),
            prevPuce = slider.find('.bullet.active'),
            prevTitle = slider.find('.h1.active'),
            prevSubtitle = slider.find('.h2.active');

        const tl = new TimelineMax({onComplete: function(){
            subtitle.addClass('active');
            prevTitle.removeClass('active');
            prevSubtitle.removeClass('active');
            title.addClass('active');
            TweenMax.set(prevTitle, {y: -10});
            TweenMax.set(prevSubtitle, {y: -10});
        }});
        
        
        prevPuce.removeClass('active');
        
        puce.addClass('active');


        tl.to(prevTitle, 0.6, {y: 10, opacity: 0})
        .to(title, 0.6, {y: 0, opacity: 1, delay: -0.2})
        .to(prevSubtitle, 0.6, {y: 10, opacity: 0, delay: -0.7})
        .to(subtitle, 0.6, {y: 0, opacity: 1, delay: -0.2});

        TweenMax.set(clouds, {opacity: 1});
        TweenMax.staggerFromTo(clouds, 0.6,{y: -slider.height()}, {y: 0, delay: 0.05}, 0.1);
        TweenMax.to(clouds, 0.6, {scale: 1.5, delay: 0.2, onComplete:function(){
            prevSlide.removeClass('active');
            slide.addClass('active');
            TweenMax.to(clouds, 0.6, {scale: 0.05, delay: 0.25});
            TweenMax.staggerTo(clouds, 0.6, {y: slider.height()}, 0.1);
        }});

        TweenMax.delayedCall(10, showSlide, [puce.next().length ? puce.next() : firstPuce]);
    };

    slider.on('click', '.bullet', function(){
        if($(this).hasClass('active')) return;
        TweenMax.killAll(true, true, false);
        TweenMax.killAll(false, false, true);
        showSlide( $(this) );
    });

    TweenMax.delayedCall(10, showSlide, [firstPuce.next()]);

};

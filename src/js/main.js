const $ = require('jquery-slim');

// require('gsap');
require('gsap/CSSPlugin');
const TweenLite = require('gsap/TweenLite');


$(function(){

    window.requestAnimFrame = require('./requestAnimFrame.js');
    const throttle = require('./throttle.js');
    const noTransition = require('./noTransition.js');
    const gridHover = require('./gridHover.js');

    const body = $('body');
    let windowWidth = window.outerWidth, windowHeight = $(window).height();


    function resizeHandler(){
        windowWidth = window.outerWidth;
        windowHeight = $(window).height();
    }

    function loadHandler(){
        var nav = $('#nav'), current = nav.find('.current-menu-item'), indicator = $('.js-indic');

        if( current.length ){
            TweenLite.set(indicator, {x: (current.position().left + current.width()/2) - indicator.width()/2 + 'px', opacity: 1});
        }

        nav.on('mouseenter', 'a', function(e){

            TweenLite.to(indicator, 1, {x: ($(this).parents('li').position().left + $(this).parents('li').width()/2) - indicator.width()/2 + 'px', opacity: 1});
            
            TweenLite.to(indicator.find('.bubble').eq(1), 0.5, {x: '7px', onComplete: function(){
                TweenLite.to(indicator.find('.bubble').eq(2), 0.5, {x: '0px'});
            }});
            TweenLite.to(indicator.find('.bubble').eq(2), 0.6, {x: '10px', onComplete: function(){
                TweenLite.to(indicator.find('.bubble').eq(2), 0.6, {x: '0px'});
            }});

        })/*.on('mouseleave', 'a', function(e){
            if( current.length ){
                TweenLite.to(indicator, 0.3, {x: (current.position().left + current.width()/2) - indicator.width()/2 + 'px'});
            }else{
                TweenLite.to(indicator, 0.3, {opacity: 0});
            }
        })*/;
    }

    gridHover($('#grid'));
    // isMobile.any ? body.addClass('is-mobile') : body.addClass('is-desktop');

    // Since script is loaded asynchronously, load event isn't always fired !!!
    document.readyState === 'complete' ? loadHandler() : $(window).on('load', loadHandler);

    $(window).on('resize', throttle(function(){
        requestAnimFrame(resizeHandler);
    }, 60));



    $(document).on('scroll', throttle(function(){

    }, 60));

});

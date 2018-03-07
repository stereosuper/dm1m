const $ = require('jquery-slim');
var isMobile = require('is-mobile');

// require('gsap');
require('gsap/CSSPlugin');
const TweenLite = require('gsap/TweenLite');


$(function(){

    window.requestAnimFrame = require('./requestAnimFrame.js');
    const throttle = require('./throttle.js');
    const noTransition = require('./noTransition.js');
    const gridHover = require('./gridHover.js');
    const slider = require('./slider.js');
    const menuHover = require('./rolloverMenu.js');
    const methodo = require('./methodo.js');
    const animSheep = require('./animSheep.js');
    const mosaic = require('./mosaic.js');

    const body = $('body');
    let windowWidth = window.outerWidth, windowHeight = $(window).height();


    function resizeHandler(){
        windowWidth = window.outerWidth;
        windowHeight = $(window).height();
    }

    function loadHandler(){
        menuHover( $('#nav') );
    }

    isMobile.any ? body.addClass('is-mobile') : body.addClass('is-desktop');
    // isMobile.any ? body.addClass('is-mobile') : body.addClass('is-mobile');
    slider($('#newsSlider'));
    gridHover($('#grid'));
    gridHover($('#teamGrid'));
    methodo($('#methodo'));
    animSheep($('#expert'), $('#sheep'));
    mosaic($('#grid'), throttle, requestAnimFrame);

    // Since script is loaded asynchronously, load event isn't always fired !!!
    document.readyState === 'complete' ? loadHandler() : $(window).on('load', loadHandler);

    $(window).on('resize', throttle(function(){
        requestAnimFrame(resizeHandler);
    }, 60));



    $(document).on('scroll', throttle(function(){

    }, 60));

});

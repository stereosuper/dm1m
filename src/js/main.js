const $ = require('jquery-slim');
var isMobile = require('is-mobile');

require('gsap');


$(function(){

    // const requestAnimFrame = require('./requestAnimFrame.js');
    // const throttle = require('./throttle.js');
    // const noTransition = require('./noTransition.js');
    const gridHover = require('./gridHover.js');
    const slider = require('./slider.js');
    const menuHover = require('./rolloverMenu.js');
    const methodo = require('./methodo.js');
    const animSheep = require('./animSheep.js');
    const mosaic = require('./mosaic.js');
    const burger = require('./burger.js');
    const smallCloudAnimation = require('./smallCloudAnimation.js');
    const moreSheepBox = require('./moreSheepBox.js');

    const body = $('body');
    let windowWidth = window.outerWidth, windowHeight = $(window).height();


    // function resizeHandler(){
    //     windowWidth = window.outerWidth;
    //     windowHeight = $(window).height();
    // }

    function loadHandler(){
        menuHover( $('#nav') );
    }

    isMobile() ? body.addClass('is-mobile') : body.addClass('is-desktop');

    slider($('#newsSlider'));
    gridHover($('#grid'));
    gridHover($('#teamGrid'));
    methodo($('#methodo'));
    mosaic($('#grid'));
    animSheep($('#expert'), $('#sheep'), windowWidth, windowHeight);
    burger($('#burger'));
    smallCloudAnimation($('#contact-cloud'));
    smallCloudAnimation($('#more-cloud'));
    moreSheepBox($('#more'));

    // Since script is loaded asynchronously, load event isn't always fired !!!
    document.readyState === 'complete' ? loadHandler() : $(window).on('load', loadHandler);

    // $(window).on('resize', throttle(function(){
    //     requestAnimFrame(resizeHandler);
    // }, 60));



    // $(document).on('scroll', throttle(function(){

    // }, 60));

});

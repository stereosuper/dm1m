var $ = require('jquery-slim');
require('gsap');

module.exports = function(methodoWrapper){
    if(!methodoWrapper.length) return;
    const btnStep = methodoWrapper.find('.steps a');
    btnStep.on('click', function(e){
        e.preventDefault();
        let liParent = $(this).parents('li');
        if(!liParent.hasClass('active')){
            methodoWrapper.find('.steps li.active').removeClass('active');
            liParent.addClass('active');
        }
    });
};

var $ = require('jquery-slim');
require('gsap');

module.exports = function(methodoWrapper){
    if(!methodoWrapper.length) return;
    const steps = methodoWrapper.find('.steps');
    const btnStep = methodoWrapper.find('.steps a');
    let liParent, liParentIndex;

    btnStep.on('click', function(e){
        e.preventDefault();
        liParent = $(this).parents('li');
        if(!liParent.hasClass('active')){
            liParentIndex = liParent.index()+1;
            steps.removeClass('step-1 step-2 step-3 step-4 step-5');
            steps.addClass('step-'+liParentIndex);
            methodoWrapper.find('.steps li.active').removeClass('active');
            liParent.addClass('active');
        }
    });
};

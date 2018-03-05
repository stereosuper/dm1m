var $ = require('jquery-slim');
require('gsap');

module.exports = function( container, sheep ){

    if( !container.length || !sheep.length ) return;

    container.on('mouseenter', '.js-cloud', function(){
        switch( $(this).index() ){
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
        }
    });

}

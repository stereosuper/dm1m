const $ = require('jquery-slim');
require('gsap');

module.exports = function(cloud) {

  if (!cloud.length) {
    return;
  }

  function animateCloudIn() {
    let bubbles = cloud.find('.js-bubble');

    TweenMax.fromTo(bubbles, 0.6, {
      scale: 1,
    }, {
      scale: 1.1,
      ease: Back.easeOut.config(15),
    });
  }

  function animateCloudOut() {
    let bubbles = cloud.find('.js-bubble');
    TweenMax.to(bubbles, 0.6, {
      scale: 1,
    });
  }

  cloud.on('mouseenter', '.js-hover-me', animateCloudIn).on('mouseleave', '.js-hover-me', animateCloudOut);
};

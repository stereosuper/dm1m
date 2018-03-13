const $ = require('jquery-slim');
require('gsap');

module.exports = function(cloud) {

  if (!cloud.length) {
    return;
  }

  function animateCloudIn() {
    let bubbles = cloud.find('.bubble');
    TweenMax.fromTo(bubbles, 0.6, {
      scaleX: 1,
      scaleY: 1,
      scaleZ: 0,
    }, {
      scaleX: 1.1,
      scaleY: 1.1,
      scaleZ: 0,
      ease: Back.easeOut.config(15),
    });
  }

  function animateCloudOut() {
    let bubbles = cloud.find('.bubble');
    TweenMax.to(bubbles, 0.6, {
      scaleX: 1,
      scaleY: 1,
      scaleZ: 0,
    });
  }

  cloud.hover(animateCloudIn, animateCloudOut);
};

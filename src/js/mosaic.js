
var $ = require('jquery-slim');

module.exports = function(grid, throttle, requestAnimFrame) {

  if (!grid.length) {
    return;
  }

  function handleResize() {
    const desktopSmall = 960;
    const phone = 580;
    let gridLayout;

    if ($(window).width() > desktopSmall) {
      gridLayout = ['square', 'v-rect', 'square', 'square',
        'h-rect', 'v-rect', 'v-rect', 'square',
        'square', 'h-rect', 'square', 'square'
      ];
    } else if ($(window).width() < desktopSmall && $(window).width() >= phone) {
      gridLayout = ['square', 'square', 'square',
        'square', 'h-rect', 'square',
        'square', 'square', 'v-rect',
        'square', 'v-rect', 'square'
      ];
    } else if ($(window).width() < phone) {
      gridLayout = ['square', 'square',
        'square', 'square',
        'square', 'square',
        'square', 'square',
        'square', 'square',
        'square', 'square'
      ];
    }
    return gridLayout;
  }

  function loadImgAsync(index, type, img) {
    let imgParsed = JSON.parse(img);
    let newImg = document.createElement('img');

    imgParsed = $(imgParsed)[0];

    $('#grid').find('.js-grid-item').eq(index).find('.js-hover').removeClass('square v-rect h-rect');
    $('#grid').find('.js-grid-item').eq(index).find('.js-hover').addClass(type);
    $('#grid').find('.js-grid-item').eq(index).find('img').remove();

    newImg.src = imgParsed.src;
    newImg.onload = function() {
      $('#grid').find('.js-grid-item').eq(index).find('.js-hover').find('> span').before(imgParsed);
    };
  }

  function selectImgKind(gridLayout) {
    grid.find('.js-grid-item').each(function(index) {
      let squareImg = $(this).data('square-img');
      let vRectImg = $(this).data('v-rect-img');
      let hRectImg = $(this).data('h-rect-img');

      let layoutIndex = index % 12;

      switch (gridLayout[layoutIndex]) {
        case 'square':
          loadImgAsync(index, 'square', squareImg);
        break;
        case 'v-rect':
          loadImgAsync(index, 'v-rect', vRectImg);
        break;
        case 'h-rect':
          loadImgAsync(index, 'h-rect', hRectImg);
        break;
        default:

      }

    });
  }

  let gridLayout = handleResize();
  selectImgKind(gridLayout);

  $(window).on('resize', throttle(() => {
    requestAnimFrame(() => {
      let gridLayoutUpdate = handleResize();
      if (gridLayout.toString() !== gridLayoutUpdate.toString()) {
        gridLayout = gridLayoutUpdate;
        selectImgKind(gridLayoutUpdate);
      }
    });
  }, 60));
};

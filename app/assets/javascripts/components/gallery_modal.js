let gallery = $('.gallery');
let imageBox = $('.image-box');
let clickedLink;

function nextImage(clickedLink) {
  let path = clickedLink.attr('href'),
    alt = clickedLink.find('img').attr('alt');
  let image = imageBox.find('.inner-img');

  image.attr('src', '');
  image.attr('src', path);
  image.attr('alt', alt);

  imageBox.find('p').text(alt);
}

gallery.find('a').on('click', function(event) {
  event.preventDefault();
  clickedLink = $(this);
  nextImage(clickedLink);
  imageBox.addClass('active');
});

imageBox.find('.left').on('click', function() {
  clickedLink = clickedLink.prev();
  nextImage(clickedLink);
});

imageBox.find('.right').on('click', function() {
  clickedLink = clickedLink.next();
  nextImage(clickedLink);
});

$(document).on('keypress', function(event) {
  if(event.key == 'Escape') imageBox.removeClass('active');
});
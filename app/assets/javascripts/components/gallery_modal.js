let gallery = $('.gallery');
let imageBox = $('.image-box');
let closeBtn = document.getElementById('galerry-modal-close-btn');
let clickedLink;

function nextImage(clickedLink) {
  console.log(clickedLink);
  let path = clickedLink.attr('href'),
    alt = clickedLink.find('img').attr('alt');
  let image = imageBox.find('.inner-img');

  image.attr('src', '');
  image.attr('src', path);
  image.attr('alt', alt);

  imageBox.find('.image-text').text(alt);
}

if(closeBtn) closeBtn.addEventListener('click', event => document.querySelector('.image-box').classList.remove('active'));

gallery.find('.image-link').on('click', function(event) {
  event.preventDefault();
  clickedLink = $(this);
  nextImage(clickedLink);
  imageBox.addClass('active');
});

imageBox.find('.left').on('click', function() {
  clickedLink = clickedLink.parent().prev().find('.image-link');
  nextImage(clickedLink);
});

imageBox.find('.right').on('click', function() {
  clickedLink = clickedLink.parent().next().find('.image-link');
  nextImage(clickedLink);
});

$(document).on('keypress', function(event) {
  if(event.key == 'Escape') imageBox.removeClass('active');
});
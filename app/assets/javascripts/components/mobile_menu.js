let menu = $('.menu');

menu.on('click', function() {
  let navigation = $('.header-nav').find('ul');
  navigation.slideToggle(500);
});
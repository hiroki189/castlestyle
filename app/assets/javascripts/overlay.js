$(function(){
  $("#style__photo__narrow__container__new__place__field__add").on('click', function(){
    $('#overlay, #modalWindow ').fadeIn();
  });
  $('#close').on('click', function(){
    $('#overlay, #modalWindow').fadeOut();
  });
});
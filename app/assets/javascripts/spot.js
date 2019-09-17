$(function(){

  var search_list = $(".modal__tab__result__collect");

  function appendSpot(spot){
    var html = `<li class="modal__tab__result__collect__place">
                  <div class="modal__tab__result__collect__place__contain__name">
                    ${ spot.name }
                      </div>
                      <button id="modal__tab__result__collect__place__contain__select__action" data-spot-id=${spot.id} data-spot-name=${spot.name}>
                        選択
                    </button>
                </li>`
    search_list.append(html);
  }

  function appendNoSpot(msg){
    var html = `<li class="modal__tab__result__collect__place">
                  <div class="modal__tab__result__collect__place__contain">
                  ${msg}
                  </div>
                </li>`
    search_list.append(html);
  }

    // var spot_list = $('.style__photo__narrow__container__new__place__collection__container__name');

    // function addSpot(spotId,spotName){
    //   var html = `<li class="style__photo__narrow__container__new__place__collection" id=${spotId}>
    //                 <tabble class="style__photo__narrow__container__new__place__collection__container">
    //                   <div class="style__photo__narrow__container__new__place__collection__container__name">
    //                     ${spotName}
    //                   </div>
    //                   <div class="style__photo__narrow__container__new__place__collection__container__action">
    //                     <a class="style__photo__narrow__container__new__place__collection__container__action_delete" href="">
    //                       削除
    //                     </a>
    //                   </div>
    //                 </tabble>
    //               </li>`
    //   spot_list.append(html);
    // }

  
  var spot_list = $('.style__photo__narrow__container__new__place');
  function addSpot(spotId,spotName){
    var html = `<li class="style__photo__narrow__container__new__place__collection">
      <tabble class="style__photo__narrow__container__new__place__collection__container">
        <div class="style__photo__narrow__container__new__place__collection__container__name">${spotName}</div>
          <div class="style__photo__narrow__container__new__place__collection__container__action">
          <a class="style__photo__narrow__container__new__place__collection__container__action_delete" href="">削除</a>
        </div>
      </tabble>
    </li>`
  }


  $('#modal__tab__search__prevent__input').on("keyup", function(){
    var input = $("#modal__tab__search__prevent__input").val();

    $.ajax({
      type: 'GET',
      url: '/castles/new',
      data: { keyword: input },
      dataType: 'json'
    })

    .done(function(spots){
      $(".modal__tab__result__collect").empty();
      if (spots.length !==0){
        spots.forEach(function(spot){
          appendSpot(spot);
        });
      }
      else{
        appendNoSpot("一致する場所はありません");
      }
    })
    .fail(function(){
      aleart('スポット検索に失敗しました');
    })
  });

  $('.modal__tab__result__collect').on("click", "#modal__tab__result__collect__place__contain__select__action", function(){
    var spotId =$(this).data('spot-id');
    var spotName = $(this).data('spot-name');
    addSpot(spotId, spotName);
    $(this).parent().remove();
    $('#overlay, #modalWindow').fadeOut();
  });

});
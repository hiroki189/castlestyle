$(function(){

  var search_list = $(".modal__tab__result__collect");

  function appendSpot(spot){
    var html = `<li class="modal__tab__result__collect__place">
                  <div class="modal__tab__result__collect__place__contain">
                    <div class="modal__tab__result__collect__place__contain__name">
                      ${ spot.name }
                        </div>
                          <div class="modal__tab__result__collect__place__contain__select">
                        <button id="modal__tab__result__collect__place__contain__select__action">
                          選択
                      </button>
                    </div>
                  </div>
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
      if (spots.length !==0 && input !==''){
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
});
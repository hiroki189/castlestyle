$(function(){
  var itemNum = 1;
  function buildImgHtml(blobUrl){
    var image = `<img src="${blobUrl}" id="preview-image">`;
    return image;
  }

  function appendImgBox(insertImg){
    var imagePreviewHtml = '';
    imagePreviewHtml = `<div class="style__photo__narrow__container__new__photo">
                            ${insertImg}
                          <input id="pic_upload" class="style__photo__narrow__container__new__photo__image" data-image= "${itemNum}" type="file" name="castle[image]">
                        </div>`
    $(".style__photo__narrow__container__new__field").prepend(imagePreviewHtml);
  }

  $(document).on("change", '#pic_upload', function(e){
    var file = e.target.files[0];
    var blobUrl = window.URL.createObjectURL(file);

    insertImg = buildImgHtml(blobUrl);
    $('.style__photo__narrow__container__new__photo').css('display', 'none');
    appendImgBox(insertImg);
  });
});
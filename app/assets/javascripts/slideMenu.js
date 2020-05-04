    // ----------------------------
    //           検索窓用
    // ----------------------------


$(function() {

  $('#slide').on('click', function(){
    if($('#slide').hasClass('off')){
      $('#slide').removeClass('off');
      $('#showright').animate({'marginRight':'110%'},500);
    }else{
      $('#slide').addClass('off');
      $('#showright').animate({'marginRight':'0%'},500);
    }
  });
});
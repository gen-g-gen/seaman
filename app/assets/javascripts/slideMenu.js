    // ----------------------------
    //           検索窓用
    // ----------------------------


$(function() {

  $('#slide').on('click', function(){
    if($('#showright').hasClass('off')){
      $('#showright').removeClass('off');
      $('#showright').animate({'marginRight':'110%'},500);
    }else{
      $('#showright').addClass('off');
      $('#showright').animate({'marginRight':'0%'},500);
    }
  });
});
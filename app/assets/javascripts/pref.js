$(function(){

  function appendCategory(child){
    var html = `
                <option value = ${child.id} data-category="${child.id}">${child.name}</option>
              `;
    return html;
    
  };

  function appendchildrenbox(insertHTML){
        var secondhtml = 
              `
                  <div class = "user__field__box", id = "area"> 
                    <label> Area </label>
                    <br>
                    <select class = "user__field__box__area", id = "area_name", name = "user[area_id]">
                      <option value="---">---</option>
                      ${insertHTML}
                    </select>
                  </div>
              `;
    $('#prefecture').append(secondhtml);
  };

  function appendgrandchildrenbox(insertHTML){
    var thirdhtml = 
              `
                <div class = "user__field__box", id = "point"> 
                  <label> Homeoint </label>
                  <br>
                  <select class = "user__field__box__point", id = "point_name", name = "user[homepoint_id]">
                    <option value="---">---</option>
                    ${insertHTML}
                  </select>
                </div>
              `;
    $('#prefecture').append(thirdhtml);
  };

  $("#prefecture_name").on("change", function(){
    var parentCategory = document.getElementById('prefecture_name').value;
    
    if (parentCategory != ""){ 
      $.ajax({
        url: 'get_category_area',
        type: 'GET',
        data: { prefecture_id: parentCategory },
        dataType: 'json'
      })
      .done(function(children){
        $('#area').remove();
        $('#point').remove();
        
        var insertHTML = '';
        children.forEach(function(child){
          insertHTML += appendCategory(child);
        });
        appendchildrenbox(insertHTML);
      })
      .fail(function(){
        alert('area取得に失敗しました');        
      })
    } else {
      $('#area').remove();
      $('#point').remove();
    };
  });

  $(".user__field__map").on("change", '#area_name', function(){
    var childContent = $('#area_name option:selected').data('category');
    var childContentvalue = document.getElementById('area_name').value;
    if (childContentvalue != "---"){
      
      $.ajax({
        url: 'get_category_point',
        type: 'GET',
        data: { area_id: childContent },
        dataType: 'json'
      })
      .done(function(grandChildren){
        $('#point').remove();
        var insertHTML = '';
        grandChildren.forEach(function(grandchild){
          insertHTML += appendCategory(grandchild);
        });
        appendgrandchildrenbox(insertHTML);
      })
      .fail(function(){
        alert('孫カテゴリー取得に失敗しました');
      })
    } else{
      $('#point').remove();
    };
  })
});
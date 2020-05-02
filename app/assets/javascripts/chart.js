  $(function(){
 
    // ----------------------------
    //           chart.js
    // ----------------------------

    var drawGraph = function(data, labels){
        var ctx = document.getElementById('chart').getContext('2d');
      // データ1
      
        var data1 = {
            label: labels[0],
            data:data[1],
            backgroundColor: "rgba(250, 50, 50, 0.3)",
            borderColor: "rgba(200, 50, 50, 0.3)",
            pointHoverBackgroundColor: "rgba(200, 50, 50, 0.3)",
            pointHoverBorderColor: "rgba(200, 50, 50, 0.3)",
        };
      // データ2
        var data2 = {
            label: labels[1], 
            data:data[2],
            backgroundColor: "rgba(50, 50, 250, 0.3)",
            borderColor: "rgba(50, 50, 200, 0.3)",
            pointHoverBackgroundColor: "rgba(50, 50, 200, 0.3)",
            pointHoverBorderColor: "rgba(50, 50, 200, 0.3)",
        }
      // ラベル(横軸)
        var label = data[0];
      // データの設定
        var config = {
            type: 'radar', // グラフの種類（レーダーチャートを指定）
            data: { labels: label, 
                    datasets: [data1, data2]  
            },
            options: {
                //凡例の設定
                legend: {
                  position: 'bottom',
                },
                // レスポンシブ指定
                responsive: true,
                //スケールの設定
                scale: {
                  pointLabels: {
                      fontSize: 15,
                      fontColor: "white",
                  },
                  ticks: {
                    stepSize: 1,
                    beginAtZero:true,
                    min: 0,
                    max: 5,
                    backdropColor: "rgb(10, 10, 51)",
                    fontColor: "white"
                  },
                  angleLines: {
                    display: true,
                    color: "limegreen"
                  },
                  gridLines: {
                    display: true,
                    color: "limegreen"
                  }
                }
            }
        }

      var myChartGraph = new Chart(ctx, config);

    };

    // データの設定
    var data1 =  gon.array
    var pointName = gon.pointname
    var newPointName = "検索してください"
   
    var data = [['波', '風', '人口', 'セット', '期待値'],
                data1,
                [0,0,0,0,0]]  
    var labels =  [ pointName , newPointName ]
    drawGraph(data, labels);
    // ----------------------------
    //           検索機能
    // ----------------------------

    function addData(newdata,newlabel) {
      data.pop();
      labels.pop();
      data.push(newdata);
      labels.push(newlabel);
      
      console.log(data)
      console.log(labels)
      drawGraph(data, labels);
    }
  
    

    function addPoint(point){
      var html = `
                  <div class="result clearfix">
                    <div class="result__name result-search-btn" point-id="${point.id}" point-name="${point.name}">${point.name}</div>
                  </div>
                `;
      $('#result__area').append(html);
    }
    function addErr() {
      let html = `
                  <div class="result clearfix">
                    <div class="result__name">ポイントが見つかりません</div>
                  </div>
                `;
      $("#result__area").append(html);
    }
    function addArea() {
      let html = `
                  <div id="result__area"></div>
                `;
      $(".right__top__left").append(html);
    }


    $('#search').on('keyup', function(){
      
      var input = $('#search').val();
      
      $.ajax({
        type: 'GET',
        url: 'messages/search',
        data: {keyword: input},
        dataType: 'json'
        
      })
      .done(function(points) {
        $("#result__area").empty();
  
         if (points.length !== 0) {
           points.forEach(function(point) {
            addPoint(point);
           });
          } else if (input.length == 0) {
            return false;
        } else {
          addErr();
        }
      })
      .fail(function() {
        alert("ユーザー検索に失敗しました");
      });
    });
    $(document).on('click','.result-search-btn', function(){
      const pointName = $(this).attr("point-name");
      const pointId = $(this).attr("point-id");
      
      $(this)
        .parent()
        .parent()
        .remove();
         addArea();
        $("input").val("");

      // --------------------------
      //        ajaxでchart表示
      // --------------------------
      
        $.ajax({
          type: 'GET',
          url: 'messages/addchart',
          data: { addpoint_id: pointId },
          dataType: 'json'
        })
        .done(function(points) {
          if (points.length !== 0) {
            var newlabel = pointName
            var newdata = points.data

            addData(newdata, newlabel);

         } else {
          console.log("pointsない");
          pointData = [2,2,2,2,2]
         }
        })
        .fail(function() {
          alert("point検索に失敗しました");
        });
    });

  });
   

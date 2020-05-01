  $(function(){
 
    var drawGraph = function(data){
        var ctx = document.getElementById('chart').getContext('2d');
      // データ1
      var pointName = gon.pointname
        var data1 = {
            label: pointName,
            data:data[1],
            backgroundColor: "rgba(250, 50, 50, 0.3)",
            borderColor: "rgba(200, 50, 50, 0.3)",
            pointHoverBackgroundColor: "rgba(200, 50, 50, 0.3)",
            pointHoverBorderColor: "rgba(200, 50, 50, 0.3)",
        };
      // データ2
        var data2 = {
            label:'湯河原',
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

    // ラベルの設定
    var data1 =  gon.array
    var data = [['波', '風', '人口', 'セット', '期待値'],
                data1]
    
    drawGraph(data);
})

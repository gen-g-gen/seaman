document.addEventListener('DOMContentLoaded', function(){
 

  $(".rateYo1").rateYo({
    rateing: 2.5,
    halfStar: true
   
  }).on("rateyo.change", function (e, data1) {
        
    console.log(data1.rating);
  });

  $(".rateYo2").rateYo({
    rateing: 2.5,
    halfStar: true
   
  });

  $(".rateYo3").rateYo({
    rateing: 2.5,
    halfStar: true
   
  });

  $(".rateYo4").rateYo({
    rateing: 2.5,
    halfStar: true
   
  });
  

  function calculateRatingTouch (e) {
    var position = $normalGroup.offset(),
        nodeStartX = position.left,
        nodeEndX = nodeStartX + $normalGroup.width();
    var maxValue = options.maxValue;
    var pageX = e.originalEvent.changedTouches[0].pageX;
    var calculatedRating = 0;
    
    if(pageX < nodeStartX) {
      calculatedRating = minValue;
    }else if (pageX > nodeEndX) {
      calculatedRating = maxValue;
    }else {
      var calcPrcnt = ((pageX - nodeStartX)/(nodeEndX - nodeStartX));
      if (spacing > 0) {
        calcPrcnt *= 100;
        var remPrcnt = calcPrcnt;
        while (remPrcnt > 0) {
          if (remPrcnt > percentOfStar) {
            calculatedRating += step;
            remPrcnt -= (percentOfStar + percentOfSpacing);
          } else {
            calculatedRating += remPrcnt/percentOfStar*step;
            remPrcnt = 0;
          }  
        }
      } else {
        calculatedRating = calcPrcnt * (options.maxValue);  
      }
      calculatedRating = round(calculatedRating);
    }
    return calculatedRating;
    
  }
  
  function onTouchMove (e) {
    event.preventDefault();
    event.stopPropagation();

    var rating = calculateRatingTouch(e).toFixed(options.precision);
    var maxValue = options.maxValue;

    rating = checkPrecision(parseFloat(rating), minValue, maxValue);
    showRating(rating);
   
    $node.trigger("rateyo.change", {rating: rating});
  }
  
  function onTouchEnd (e) {
    event.preventDefault();
    event.stopPropagation();

    var resultantRating = calculateRatingTouch(e).toFixed(options.precision);

    resultantRating = parseFloat(resultantRating);
    that.rating(resultantRating);
  }

  function bindEvents () {
 
    $node
         .on("mousemove", onMouseEnter)
         .on("mouseenter", onMouseEnter)
         .on("mouseleave", onMouseLeave)
         .on("click", onMouseClick)
         .on("touchstart", onTouchMove)
         .on("touchmove", onTouchMove)
         .on("touchend", onTouchEnd)
         .on("rateyo.change", onChange)
         .on("rateyo.set", onSet);
  }

  function unbindEvents () {

    $node
         .off("mousemove", onMouseEnter)
         .off("mouseenter", onMouseEnter)
         .off("mouseleave", onMouseLeave)
         .off("click", onMouseClick)
         .off("touchstart", onTouchMove)
         .off("touchmove", onTouchMove)
         .off("touchend", onTouchEnd)
         .off("rateyo.change", onChange)
         .off("rateyo.set", onSet);
  }
});


class PointsController < ApplicationController

  def index
    
    @area = Area.find(params[:area_id])
    @point = Point.all.includes(:area)
    # binding.pry
  end

end

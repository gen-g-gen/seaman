class PointsController < ApplicationController

  def index
    
    @area = Area.find(params[:area_id])
    @point = Point.all.includes(:area)
    @prefectures = Prefecture.select(:name, :id)
    @areas = Area.select(:name, :id, :prefecture_id)
    @points = Point.select(:name, :id, :area_id)
    # binding.pry
  end

end

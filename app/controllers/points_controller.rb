class PointsController < ApplicationController

  def new
    
    @area = Area.find(params[:area_id])
    @point = Point.all.includes(:area)
    @prefectures = Prefecture.select(:name, :id)
    @areas = Area.select(:name, :id, :prefecture_id)
    @points = Point.select(:name, :id, :area_id)
    binding.pry
    @point.users << current_user
  end

  def create
    @point = Point.new(point_params)
    if @point.save
      redirect_to root_path, notice: `入室しました`
    else
      render :new
    end
  end

  private

  def point_params
    params.require(:point).permit(:name, point_id: [] )
  end

end

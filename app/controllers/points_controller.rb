class PointsController < ApplicationController

  def new
    @point_new = Point.new
    @area = Area.find(params[:area_id])
    @point = Point.all.includes(:area)

    @prefectures = Prefecture.select(:name, :id)
    @areas = Area.select(:name, :id, :prefecture_id)
    @points = Point.select(:name, :id, :area_id)
    
    # binding.pry
  end

  def create
    if user_signed_in?
      @user = current_user
      if @user.user_points.create(point_params)
        # binding.pry
        redirect_to area_point_messages_path(params[:area_id], params[:point][:point_id])
      else
        binding.pry
        render :new
      end
    else
      redirect_to controller: :users, action: :new
    end
    # binding.pry
    
    
    # @point = Point.new(point_params)
    # if @point.save
    #   binding.pry
    #   redirect_to root_path, notice: `入室しました`
    # else
    #   render :new
    # end

  end

  private

  def point_params
    params.require(:point).permit(:point_id, user_ids: []).merge(user_id: current_user.id)
  end
  
end

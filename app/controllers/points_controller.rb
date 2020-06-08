class PointsController < ApplicationController

  def new
    @point_new = Point.new
    @area = Area.find(params[:area_id])
    @point = Point.all.includes(:area)

    @prefectures = Prefecture.select(:name, :id)
    @areas = Area.select(:name, :id, :prefecture_id)
    @points = Point.select(:name, :id, :area_id)
    
  end

  def create
    #中間テーブル作成(各pointに紐づくユーザを中間テーブルで管理する)
    if user_signed_in?
      @user = current_user
      if @user.user_points.create(point_params)
        redirect_to area_point_messages_path(params[:area_id], params[:point][:point_id])
      else
        render :new
      end
    else
      redirect_to controller: :users, action: :new
    end
    
  end

  private

  def point_params
    params.require(:point).permit(:point_id, user_ids: []).merge(user_id: current_user.id)
  end
  
end

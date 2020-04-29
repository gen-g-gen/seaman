class MessagesController < ApplicationController
  before_action :point, only:[:index,:new, :create]
  # before_action :set_point

  

  def index

    if UserPoint.exists?(point_id: params[:point_id], user_id: current_user.id) or User.exists?(homepoint_id: params[:point_id], id: current_user.id)
      # binding.pry
      @point = Point.find(params[:point_id])
      @messages = @point.messages.includes(:user)
      @prefectures = Prefecture.select(:name, :id)
      @area = Area.find(params[:area_id])
      # binding.pry
    else
     redirect_to new_area_point_path(params[:area_id])
    end

  end

  def new
      @message = Message.new
      @area = Area.find(params[:area_id])
      @point = Point.find(params[:point_id])
  end

  def create
    @area = Area.find(params[:area_id])
    @point = Point.find(params[:point_id])
    @message = Message.create(message_params)
    if @message.save
      # binding.pry
      redirect_to area_point_messages_path(@area.id,@point.id)
    else
      render :index
    end
  end
  
  def show
  end
 
  private
  def point
    
    @prefectures = Prefecture.select(:name, :id)
    @areas = Area.select(:name, :id, :prefecture_id)
    @points = Point.select(:name, :id, :area_id)
  
  end  

  def message_params
    params.require(:message).permit(:message,:image, :wave, :windy, :population, :set, :expected).merge(user_id: current_user.id,point_id: params[:point_id] )
  end

  def set_point
    # @point = Point.find(params[:point_id])
  end
  
end

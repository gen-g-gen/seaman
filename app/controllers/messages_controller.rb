class MessagesController < ApplicationController

  def index
    @area = Area.find(params[:area_id])
    @point = Point.find(params[:point_id])
    @prefectures = Prefecture.select(:name, :id)
    @areas = Area.select(:name, :id, :prefecture_id)
    @points = Point.select(:name, :id, :area_id)

    
  end

  def new
      #  && current_user.id == @product.user_id
      # redirect_to "/products/#{@product.id}"
      @message = Message.new
   
  end

  def create
    @messages = Message.create(message_params)
    @message.save
    redirect_to area_point_messages_path(@area.id,@point.id)
  end
 
  private
  def message_params
    params.require(:message).permit(:user).merge(user_id: current_user.id, message_id: params[:message_id] )
  end
  
end

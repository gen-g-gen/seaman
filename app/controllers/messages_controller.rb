class MessagesController < ApplicationController
  before_action :point, only:[:index,:new, :create]
  before_action :set_point, only:[:index,:new, :create, :chart]
  before_action :set_time
  before_action :chart, only:[:index]
  # before_action :set_point

  

  def index
    
    if UserPoint.exists?(point_id: params[:point_id], user_id: current_user.id) or User.exists?(homepoint_id: params[:point_id], id: current_user.id)
      # binding.pry
      @messages = @point.messages.order(created_at: "DESC").includes(:user)
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
  end

  def create
    @area = Area.find(params[:area_id])
    @message = Message.create(message_params)
    if @message.save 
      # binding.pry
      redirect_to area_point_messages_path(@area.id,@point.id)
    else
      flash.now[:alert] = 'メッセージを入力してください。'
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
    @point = Point.find(params[:point_id])
  end

  def set_time
    @time = Time.now
  end

  def chart
    # pointの３日間のデータを取得
    @num = Message.where(point_id: "#{params[:point_id]}").where(created_at: (Time.now.midnight - 3.day)..Time.now.midnight)
    @count = @num.to_a.count
   
    # 平均値の取得
    @wave = @num.sum(:wave) / @count
    @windy = @num.sum(:windy) / @count
    @population = @num.sum(:population) / @count
    @set = @num.sum(:set) / @count
    @expect = @num.sum(:expected) / @count
    # 配列化
    @array = Array[@wave, @windy, @population, @set, @expect]
    # gonに変数の代入
    gon.array = @array
    gon.pointname = @point.name
  end
  
end

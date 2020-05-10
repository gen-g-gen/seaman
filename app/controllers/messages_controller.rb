class MessagesController < ApplicationController
  before_action :point, only:[:index,:new, :create]
  before_action :set_point, only:[:index,:new, :create, :chart]
  before_action :set_time
  before_action :chart, only:[:index]

  

  def index
    
    if UserPoint.exists?(point_id: params[:point_id], user_id: current_user.id) or User.exists?(homepoint_id: params[:point_id], id: current_user.id)
      @messages = @point.messages.order(created_at: "DESC").includes(:user)
      @prefectures = Prefecture.select(:name, :id)
      @area = Area.find(params[:area_id])
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
      redirect_to area_point_messages_path(@area.id,@point.id)
    else
      flash.now[:alert] = 'メッセージを入力してください。'
      render :new
    end
  end
  
  def show
  end

  def search
    return nil if params[:keyword] == ""
    @point_search= Point.where(['name LIKE ?', "%#{params[:keyword]}%"] ).where.not(id: params[:point_id]).limit(5)
    respond_to do |format|
      format.html
      format.json
    end
  end

  def addchart
    @messages = Message.where(point_id: "#{params[:addpoint_id]}")
    if @messages.exists? 
      @num = @messages.where(created_at: (Time.now.midnight - 3.day)..Time.now)
      # 各パラメータが2以外のメッセージの取得
      
      if @num.where.not(wave: "2").exists? 
        @wave = @num.where.not(wave: "2").average(:wave)
      else
        @wave == "2"
      end
      
      if @num.where.not(windy: "2").exists? 
        @windy = @num.where.not(windy: "2").average(:windy)
      else
        @windy == "2"
      end

      if @num.where.not(population: "2").exists? 
        @population = @num.where.not(population: "2").average(:population)
      else
        @population == "2"
      end
      
      if @num.where.not(set: "2").exists? 
        @set = @num.where.not(set: "2").average(:set)
      else
        @set == "2"
      end
      
      if @num.where.not(expected: "2").exists? 
        @expect = @num.where.not(expected: "2").average(:expected)
      else
        @expect == "2"
      end
      
      @array = Array[@wave, @windy, @population, @set, @expect]

      respond_to do |format|
        format.json
      end

    else
      @array = [2,2,2,2,2]
    end
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
    
    gon.pointname = @point.name
    @messages = Message.where(point_id: "#{params[:point_id]}")

    if @messages.exists? 
      # pointの３日間のデータを取得
      @num = @messages.where(created_at: (Time.now.midnight - 3.day)..Time.now)
   

      # 各パラメータが2以外のメッセージの取得
      
      if @num.where.not(wave: "2").exists? 
        @wave = @num.where.not(wave: "2").average(:wave)
      else
        @wave == "2"
      end
      
      if @num.where.not(windy: "2").exists? 
        @windy = @num.where.not(windy: "2").average(:windy)
      else
        @windy == "2"
      end

      if @num.where.not(population: "2").exists? 
        @population = @num.where.not(population: "2").average(:population)
      else
        @population == "2"
      end
      
      if @num.where.not(set: "2").exists? 
        @set = @num.where.not(set: "2").average(:set)
      else
        @set == "2"
      end
      
      if @num.where.not(expected: "2").exists? 
        @expect = @num.where.not(expected: "2").average(:expected)
      else
        @expect == "2"
      end
      

      @array = Array[@wave, @windy, @population, @set, @expect]
      # gonに変数の代入
      gon.array = @array
      # binding.pry
      
      respond_to do |format|
        format.html
        format.json
      end
    else
      gon.array = [2,2,2,2,2]
    end

  end

  
  
end

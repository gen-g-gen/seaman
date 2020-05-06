class UsersController < ApplicationController


  def new
    
    @user = User.new
    @prefecture = Prefecture.all
    @area = Area.all.includes(:prefecture)
    @point = Homepoint.all.includes(:area)

    
  end

  def get_category_area
    # 選択された親カテゴリーに紐付く子カテゴリーの配列を取得
    @category_area = Area.where(prefecture_id: "#{params[:prefecture_id]}")
  end

  def get_category_point
    # 選択された子カテゴリーに紐付く孫カテゴリーの配列を取得
    @category_point = Point.where(area_id: "#{params[:area_id]}")
  end

end

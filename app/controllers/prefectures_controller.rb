class PrefecturesController < ApplicationController
  before_action :set_point_array, only: [:index]

  def index
    
  end

  def new
  end

  def see

  end

  def set_point_array
    @point_array = ["---"]
    #親カテゴリーのみ抽出 => 配列に追加（[表示する値,取得する値] = [parent.name, parent.id]）
    @point_array.concat(Point.where(ancestry: nil).pluck(:name,:id))
  end

end

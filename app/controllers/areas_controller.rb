class AreasController < ApplicationController

  def index
    @prefecture = Prefecture.all
    @area = Area.all.includes(:prefecture)

    # binding.pry
  end
end

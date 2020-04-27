class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :point

  def after_sign_in_path_for(resource)
    area_point_messages_path(current_user.area_id, current_user.homepoint_id)
  end

  private
  

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :image, :name, :prefecture_id, :area_id, :homepoint_id])
  end

end

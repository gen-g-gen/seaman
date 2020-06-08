class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    authorization
    get_category_area
    get_category_point
  end

  def google_oauth2
    authorization
    get_category_area
    get_category_point
  end




  def failure
    redirect_to root_path
  end

  def get_category_area
    @category_area = Area.where(prefecture_id: params[:prefecture_id])
    render template: 'devise/registrations/get_category_area'
  end
  def get_category_point
    @category_point = Point.where(area_id: params[:area_id])
    render template: 'devise/registrations/get_category_point'
  end

  private

  def authorization
    @prefecture = Prefecture.all
    sns_info = User.from_omniauth(request.env["omniauth.auth"])
    @user = sns_info[:user]
    

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
    else
      @sns_id = sns_info[:sns].id
      render template: 'devise/registrations/new'
    end

  end

end

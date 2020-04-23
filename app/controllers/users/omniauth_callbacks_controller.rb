class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    authorization
    def get_category_area
      @category_area = Area.where(prefecture_id: "#{params[:prefecture_id]}")
      render template: 'devise/registrations/get_category_area'
    end
    def get_category_point
      @category_point = Point.where(area_id: "#{params[:area_id]}")
      render template: 'devise/registrations/get_category_point'
    end
  end

  def google_oauth2
    authorization
    def get_category_area
      @category_area = Area.where(prefecture_id: "#{params[:prefecture_id]}")
      render template: 'devise/registrations/get_category_area'
    end
    def get_category_point
      @category_point = Point.where(area_id: "#{params[:area_id]}")
      render template: 'devise/registrations/get_category_point'
    end
  end




  def failure
    redirect_to root_path
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

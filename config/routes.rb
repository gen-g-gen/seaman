Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks' ,
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get '/users/auth/facebook/get_category_area', to: 'users/omniauth_callbacks#get_category_area', defaults: { format: 'json' }
    get '/users/auth/facebook/get_category_point', to: 'users/omniauth_callbacks#get_category_point', defaults: { format: 'json' }
    get '/users/auth/google_oauth2/get_category_area', to: 'users/omniauth_callbacks#get_category_area', defaults: { format: 'json' }
    get '/users/auth/google_oauth2/get_category_point', to: 'users/omniauth_callbacks#get_category_point', defaults: { format: 'json' }
  end
  
  root 'areas#index'

  
  resources :users, only: [:index, :new] do
    collection do
      get 'get_category_area', defaults: { format: 'json' }
      get 'get_category_point', defaults: { format: 'json' }
    end
  end

  resources :waves, only: [:new] do
    # member do
    #   get 'area'
    # end
  end
  
  resources :areas, only: [:index] do
    resources :points, only: [:index, :new] do
      resources :messages, only: [:index, :new, :create, :show ]
    end
  end
  
  

end

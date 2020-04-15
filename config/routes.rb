Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  
  root 'prefectures#index'
  resources :users, only: [:index, :new]
  resources :waves, only: [:new] do
    # member do
    #   get 'area'
    # end
  end
  resources :prefectures, only: [:index] do
    resources :areas, only: [:index, :new] do
      resources :points, only: [:index, :new, :create, :show ]
       
    end
  end
  

end

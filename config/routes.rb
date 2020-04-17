Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  
  root 'areas#index'
  resources :users, only: [:index, :new]
  resources :waves, only: [:new] do
    # member do
    #   get 'area'
    # end
  end
  
  resources :areas, only: [:index] do
    resources :points, only: [:index, :new] do
      resources :messages, only: [:new, :create, :show ]
    end
  end
  
  

end

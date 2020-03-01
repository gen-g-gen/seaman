Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  
  root 'messages#index'
  resources :users, only: [:index, :new]
  resources :prefectures, only: [:index, :new, :see] do
    resources :messages, only: [:index, :new]
    member do
      get 'see'
    end
  end
  

end

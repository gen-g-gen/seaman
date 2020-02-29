Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  
  root 'messages#index'
  resources :messages, only: [:index, :new]
  resources :users, only: [:index, :new]

end

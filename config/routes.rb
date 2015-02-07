Rails.application.routes.draw do
  
  resources :experts
  get '/users/dashboard', to: 'users#dashboard'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

end


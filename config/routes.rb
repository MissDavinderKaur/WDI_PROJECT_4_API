Rails.application.routes.draw do

  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show'

  resources :issues
  resources :messages
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end

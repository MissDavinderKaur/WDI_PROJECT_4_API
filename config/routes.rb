Rails.application.routes.draw do

  get 'users/:id', to: 'users#show'
  put 'users/:id', to: 'users#update'
  resources :issues
  resources :messages
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end

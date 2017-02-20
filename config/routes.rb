Rails.application.routes.draw do
  resources :issues
  resources :messages
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end

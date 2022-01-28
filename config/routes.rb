Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user
  resources :session

  get 'signup', to: 'user#new', as: 'signup'
  post 'register', to: 'user#create', as: 'register'
  get 'signin', to: 'session#new', as: 'signin'
  post 'login', to: 'session#create', as: 'login'
  get 'logout', to: 'session#destroy', as: 'logout'
end
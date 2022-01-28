Rails.application.routes.draw do
  resources :appoinmentinfos
  resources :calculates
  post 'calculates/new'
  resources :calculatorrs
  resources :appoinmentdetails
  resources :doctors
  resources :physicians
  resources :coach_details
  resources :users
  resources :admins
  resources :positions
  resources :achievements
  resources :players
  resources :sports
  # resources :sports, except:[:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'jqueryvalidation/index'
  get 'dropdown/index'
  root 'checkboxeg#index'
  resources :checkboxes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

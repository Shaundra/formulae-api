Rails.application.routes.draw do
  resources :tags
  resources :notes
  resources :elements
  resources :formulas
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

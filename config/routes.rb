Rails.application.routes.draw do
  resources :poops
  resources :snacks
  resources :dinners
  resources :lunches
  # get 'pages/home'
  root to:  'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

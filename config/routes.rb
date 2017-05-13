Rails.application.routes.draw do
  devise_for :users
  #resources :users

  resources :buses

  root 'buses#index'
end

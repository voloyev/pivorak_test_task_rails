Rails.application.routes.draw do
  devise_for :users
  # resources :users

  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end

  resources :buses
  resources :tickets
  
  root 'buses#index'
end

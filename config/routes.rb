Rails.application.routes.draw do

  devise_for :users
  resources :users, only: :show
  post 'users/buy_ticket', to: 'users#buy_ticket', as: 'buy_ticket'

  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end

  resources :buses do
    resources :tickets
  end

  root 'buses#index'
end

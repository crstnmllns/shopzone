Rails.application.routes.draw do


  devise_for :users, controllers: { registrations: 'users' }
  resources :categories
  
  resources :products
  resources :prices
  resources :users
  resources :companies


  resource :cart, only: [:show, :update]

  root 'shops#index'
end

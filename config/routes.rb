Rails.application.routes.draw do
  
  devise_for :users, controllers: { registrations: 'users' }
  resources :categories
  resources :order_items
  resources :orders
  resources :products
  resources :prices
  resources :users
  resources :companies
  resource :cart, only: [:show, :update]

  root to: 'home#index'
end

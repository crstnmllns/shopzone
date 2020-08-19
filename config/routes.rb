Rails.application.routes.draw do
  resources :categories
  resources :order_items
  resources :orders
  resources :products
  resources :prices
  devise_for :users
  resources :companies

  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

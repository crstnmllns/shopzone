Rails.application.routes.draw do

  resources :categories
  resources :order_items
  resources :orders
  resources :products
  resources :prices
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users

  resources :companies do
    
  end

  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

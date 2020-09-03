Rails.application.routes.draw do


  get 'dashboard/index'
  devise_for :clients, controllers: { sessions: 'clients/sessions' , registrations: 'clients/registrations', omniauth_callbacks: 'clients/omniauth_callbacks'}
  devise_for :users, controllers: { registrations: 'users' }
  resources :categories
  resources :products
  resources :prices
  resources :users
  resources :companies
  resources :order_items


  resource :cart, only: [:show, :update,:destroy]

  root 'shops#index'
end

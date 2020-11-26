Rails.application.routes.draw do
  root 'products#index'
  devise_for :users
	resources :contact, only: [:index]
  resources :products
  resources :users, only: [:show]

  
  resources :product_carts, only: [:new, :create, :destroy]
  resources :carts
end

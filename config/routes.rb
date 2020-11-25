Rails.application.routes.draw do
  root 'products#index'
  devise_for :users
	resources :contact, only: [:index]
  resources :products
  
  resources :product_cart_, only: [:create, :update, :destroy]
  resources :carts, except: [:index, :new, :edit]
end

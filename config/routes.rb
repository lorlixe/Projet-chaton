Rails.application.routes.draw do
  
  get 'orders/index'
  root 'products#index'
  
  devise_for :users
	resources :contact, only: [:index]
  resources :products

  resources :users, only: [:show] do
    resources :carts, only: [:show] do
      resources :charges, only: [:new, :create]
    end
  end

 
  

  resources :product_carts, only: [:new, :create, :destroy]
end

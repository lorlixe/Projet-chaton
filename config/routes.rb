Rails.application.routes.draw do
  root 'products#index'
  devise_for :users
	resources :contact, only: [:index]
  resources :products
  resources :users, only: [:show] do 
    resources :carts, only: [:show]
  end

  resources :product_carts, only: [:new, :create, :destroy]

  scope 'admin', module: 'admin', as: 'admin' do
  	resources :landing, only: [:index]
  	resources :users, only: [:index, :edit, :update, :destroy]
  	resources :products, only: [:index, :edit, :update, :destroy]
  	root 'landing#index'
  end

end

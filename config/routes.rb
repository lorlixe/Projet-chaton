Rails.application.routes.draw do
 
  get 'contact/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
	resources :contact, only: [:index]

  resources :product_cart_, only: [:create, :update, :destroy]
  resources :carts, except: [:index, :new, :edit]
  root 'products#index' 
end

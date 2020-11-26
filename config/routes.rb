Rails.application.routes.draw do
  root 'products#index'
  devise_for :users
	resources :contact, only: [:index]
	resources :products
	resources :users, only: [:show]
end

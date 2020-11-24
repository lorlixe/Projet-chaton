Rails.application.routes.draw do
  root 'products#index' 
  devise_for :users
	resources :contact, only: [:index]

end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root 'products#index'

  get 'products/:id', to: 'products#show', as: :product

end

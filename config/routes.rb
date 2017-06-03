Rails.application.routes.draw do
  devise_for :users

  root 'welcome#home'

  resources :coffee_shops, only: [:index, :new, :create]
  # resources :users


end

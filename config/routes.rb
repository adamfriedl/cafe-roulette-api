Rails.application.routes.draw do
  devise_for :users

  root 'welcome#home'

  resources :coffee_shops, only: [:index]
  resources :users do
    resources :coffee_shops, only: [:new, :create]
  end


end

Rails.application.routes.draw do
  devise_for :users

  root 'welcome#home'

  resources :coffee_shops, only: [:index]
  get '/coffee_shops/sample', to: 'coffee_shops#sample'
  resources :users do
    resources :coffee_shops, only: [:new, :create]
  end


end

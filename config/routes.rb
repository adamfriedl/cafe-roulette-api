Rails.application.routes.draw do

  resources :coffee_shops, only: [:index, :new, :create, :show, :update]
  root to: 'coffee_shops#index'

end

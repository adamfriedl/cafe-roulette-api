Rails.application.routes.draw do

  resources :coffee_shops, only: [:index, :new, :create]


end

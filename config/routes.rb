Rails.application.routes.draw do


  resources :restaurants, only: [:show]

  devise_for :users, controllers: { registrations: :registrations }
  root 'landing#index'
  get :search_restaurants, controller: :landing, action: :search_restaurants
end

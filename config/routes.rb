Rails.application.routes.draw do
  resources :pickups
  resources :deliveries
  resources :clients
  resources :trips
  resources :routes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  resources :documentary_films
  resources :series
  resources :movies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root "movies#index"

end

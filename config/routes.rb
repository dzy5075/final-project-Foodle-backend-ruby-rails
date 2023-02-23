Rails.application.routes.draw do
  resources :food_with_nutrients
  resources :ingredients
  resources :favorite_recipes
  resources :recipes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

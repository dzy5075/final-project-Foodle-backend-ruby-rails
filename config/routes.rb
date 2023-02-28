Rails.application.routes.draw do
  resources :food_with_nutrients
  resources :ingredients
  resources :favorite_recipes
  resources :recipes
  resources :users

  # Defines the root path route ("/")
  # root "articles#index"

  ##login route
  post 'login', to: 'sessions#create'
  ##logout route
  delete 'logout', to: 'sessions#destroy'
## me route auto-login or persistent
  get 'me', to: 'users#me'
  ## sign up route
  post 'signup', to: 'users#create'
end

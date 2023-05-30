Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/my-cars", to: "cars#my_cars"
  resources :cars
  resources :bookings, only: [:index, :create, :edit, :update, :destroy]
end

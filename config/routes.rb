Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/my-cars", to: "cars#my_cars"
  resources :cars do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index, :destroy] do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]


end

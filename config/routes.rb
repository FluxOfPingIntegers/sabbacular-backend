Rails.application.routes.draw do

  resources :vacations, only: [:create, :show, :update, :destroy]

  resources :trips, only: [:create, :show, :update, :destroy]

  resources :events, only: [:create, :show, :update, :destroy]

  resources :days, only: [:create, :show, :update, :destroy]

  resources :users, only: [:create, :show, :update, :destroy]

  get 'session/create'
  get 'session/google'
  delete "sessions", to: "session#destroy", as: :logout
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

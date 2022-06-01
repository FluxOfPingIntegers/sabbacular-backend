Rails.application.routes.draw do
  get 'session/create'
  get 'session/google'
  get 'session/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

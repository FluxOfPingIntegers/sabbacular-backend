Rails.application.routes.draw do
  get 'days/create'
  get 'days/show'
  get 'days/update'
  get 'days/destroy'
  get 'users/new'
  get 'users/create'
  get 'users/update'
  get 'users/destroy'
  get 'session/create'
  get 'session/google'
  get 'session/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

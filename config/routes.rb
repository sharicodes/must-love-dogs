Rails.application.routes.draw do

  resources :careservices, only: [:show]
  resources :services
  resources :caregivers


  resources :appointments
  resources :dogs
  resources :users

  # to get the login form
    get '/login', to: "sessions#login", as: "login" # does this match REST? where does this go?
    # we need to create a session saying we are logged in
    post '/sessions', to: "sessions#create"

    get '/home', to: "sessions#index", as: "home"

    # get '/careservices', to: 'appointments#new'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do

  resources :careservices
  resources :services
  resources :caregivers


  resources :appointments
  resources :dogs
  resources :users

  # to get the login form
    get '/login', to: "sessions#login", as: "login" # does this match REST? where does this go?
    # we need to create a session saying we are logged in
    post '/sessions', to: "sessions#create"

    get 'new30mwalk', to: "appointments#new_30m_walk", as: "new30mwalk"
    get 'new1hrwalk', to: "appointments#new_1hr_walk", as: "new1hrwalk"
    get 'newovernight', to: "appointments#new_overnight", as: "newovernight"
    get 'newgrooming', to: "appointments#new_grooming", as: "newgrooming"
    get 'newvet', to: "appointments#new_vet", as: "newvet"

  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

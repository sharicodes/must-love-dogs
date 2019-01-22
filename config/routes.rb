Rails.application.routes.draw do

  # resources :careservices
  # resources :services
  resources :caregivers

  devise_for :admins
  resources :appointments
  resources :dogs
  resources :users



  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

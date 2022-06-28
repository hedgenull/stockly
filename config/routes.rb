Rails.application.routes.draw do
  resources :stocks
  devise_for :users

  # GET routes
  get "home/about"

  root "home#index"

  # POST routes
  post "/" => "home#index"
end

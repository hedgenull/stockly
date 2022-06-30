Rails.application.routes.draw do
  resources :stocks
  devise_for :users

  root "home#index"

  # POST routes
  post "/" => "home#index"
end

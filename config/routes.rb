Rails.application.routes.draw do
  # GET routes
  get "home/about"

  root "home#index"

  # POST routes
  post "/" => "home#index"
end

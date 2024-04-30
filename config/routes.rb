# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  # public routes
  resources :posts

  namespace :admin do
    resources :users
    resources :posts

    root to: "users#index"
  end

  # Defines the root path route ("/")
  root "posts#index"
end

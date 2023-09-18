# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :posts

  # Defines the root path route ("/")
  root "posts#index"
end

Rails.application.routes.draw do
  # Set homepage to the places index
  root "places#index"
  
  # Define resource routes for places and entries
  resources :places
  resources :entries, only: [:new, :create]
end

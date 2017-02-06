Rails.application.routes.draw do


  resources :products
  resources :users, only: [:new, :create]
  # get 'products/index'
  # get 'products/show'
  # get 'products/new'
  # get 'products/edit'

  resources :products do
    resources :reviews, only: [:show, :create, :destroy]
  end

  resources :sessions, only: [:new, :create, :destroy]


end

Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/new'

  get 'users/create'

  Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

    resources :products
    resources :users, only: [:new, :create]
  end
  # get 'products/index'
  # get 'products/show'
  # get 'products/new'
  # get 'products/edit'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sessions, only: [:new, :create, :destroy]
end

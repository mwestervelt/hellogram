Rails.application.routes.draw do
  root to: 'home#index'
  get 'search' => 'search#index'

  devise_for :users

  resources :users, only: [:show, :edit, :update, :destroy]
  resources :posts, only: [:index, :new, :create, :show, :destroy ]
  resources :comments
end

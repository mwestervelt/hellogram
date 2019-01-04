Rails.application.routes.draw do
  get 'search/index'
  devise_for :users
  get 'home/index'
  get 'search' => 'search#index'


  root to: 'home#index'
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :posts, only: [:index, :new, :create, :show, :destroy ]
  resources :comments


end

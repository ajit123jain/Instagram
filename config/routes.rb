Rails.application.routes.draw do
  get 'search/index'
  devise_for :users
  root to: 'home#index'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show,:show,:update]
  resources :posts, only: [:new, :create,:show,:destroy]
  get 'search' => 'search#index'
end

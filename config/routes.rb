Rails.application.routes.draw do
  get 'checkins/create'
  get 'trips/index'
  get 'trips/create'
  get 'trips/show'
  resources :places
  # root to: 'home#index'
  root to: 'trips#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :users, only: [:show,:edit,:update]
  resources :posts, only: [:new, :create,:show,:destroy]
  get 'search' => 'search#index'
  resources :trips do
    resources :checkins, only: :create
  end
end

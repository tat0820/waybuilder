Rails.application.routes.draw do
  devise_for :users
  root 'ways#index'
  resources :ways do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end

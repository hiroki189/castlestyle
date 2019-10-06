Rails.application.routes.draw do
  devise_for :users

  root 'castles#index'
  resources :castles, only: [:new, :show,:create,:update] 
  resources :users, only: [:index, :edit, :update]
  resources :citadels, only: [:index, :show]
end

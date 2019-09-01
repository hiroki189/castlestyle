Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'castles#index'
  resources :castles, only: [:new, :show,:create,:update]
  resources :users, only: [:index]
end

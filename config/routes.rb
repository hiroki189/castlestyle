Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'castles#index'
  resources :castles, only: [:new]
  resources :users, only: [:index, :edit, :new]
end

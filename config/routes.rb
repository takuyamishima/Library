Rails.application.routes.draw do
  get 'sessions/new'

  resources :users, only: [:new, :create, :show]
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create, :destroy]
  get '/', to: 'homes#index'
  resources :favorites, only: [:create, :destroy]
end

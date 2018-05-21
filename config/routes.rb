Rails.application.routes.draw do
  resources :bookings
  resources :contacts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'sessions/new'

  resources :users
  resources :books, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create, :destroy]
  get '/', to: 'homes#index'
  resources :favorites, only: [:create, :destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end

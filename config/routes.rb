Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resource :user, only: [:edit, :update]
  resources :users, only: :index
  devise_for :users
  resources :comments
  get 'pages/info'
  resources :ideas
  root 'ideas#index'
  match '/user.:id',     to: 'users#show',       via: 'get'
  resources :ideas, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resource :user, only: [:edit, :update]
  devise_for :users
  resources :comments
  get 'pages/info'
  resources :ideas
  root 'ideas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

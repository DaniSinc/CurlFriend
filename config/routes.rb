Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  resources :contents do
    member do
      get :favorite
      get :unfavorite
    end
    resources :comments, only: [ :create, :destroy ]
  end
  resources :users, only: [ :show ]
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end

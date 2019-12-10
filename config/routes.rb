# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, only: %i[new create]
  get 'login' => 'sessions#login'
  post 'login' => 'sessions#create', as: :login_session
  delete 'logout' => 'sessions#destroy', as: :destroy_session

  # homepage
  root 'pages#index'
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

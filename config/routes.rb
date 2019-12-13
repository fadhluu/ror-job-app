# frozen_string_literal: true

Rails.application.routes.draw do
  
  #users path
  resources :users, only: %i[new create show]
  # resources :users

  #session path
  get 'login' => 'sessions#login'
  post 'login' => 'sessions#create', as: :login_session
  delete 'logout' => 'sessions#destroy', as: :destroy_session

  #jobs path
  get 'jobs/:id' => 'jobs#show', as: :jobs

  # homepage path
  root 'pages#index'
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, only: %i[new create]
  get 'login', to: 'sessions#new'
  post 'users', to: 'sessions#create'
  # get 'welcome', to: 'sessions#welcome'

  # homepage
  root 'pages#index'
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

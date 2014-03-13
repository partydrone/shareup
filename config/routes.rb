Rails.application.routes.draw do
  namespace :api do
    resources :shares
  end

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_scope :user do
    get '/api/current_user', to: 'users/sessions#show_current_user', as: 'show_current_user'
    post '/api/check/is_user', to: 'users/users#is_user', as: 'is_user'
  end

  get '/dashboard', to: 'home#dashboard'

  root to: 'home#index'
end

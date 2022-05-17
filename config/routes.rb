Rails.application.routes.draw do

  # devise_for :users

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', sign_up: 'register' }

  resources :users, only: %i[ index show] do
    resources :recipes
    resources :foods
  end

  root 'users#index'
end

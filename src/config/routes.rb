Rails.application.routes.draw do
  resources :users
  resources :goals
  # devise_for :users
end

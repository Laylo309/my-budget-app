Rails.application.routes.draw do
  devise_for :users
  resources :actions
  resources :categories

  root 'categories#index'
end

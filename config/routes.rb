Rails.application.routes.draw do
  resources :activities
  devise_for :users
  resources :categories

  root 'categories#index'
end

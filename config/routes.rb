Rails.application.routes.draw do
  resources :actions
  resources :categories
  resources :users

  root 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

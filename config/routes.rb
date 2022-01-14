Rails.application.routes.draw do
  authenticated :user do
  root to: 'categories#index', as: :authenticated_user
end
root to: 'splashes#index'
devise_for :users
  resources :activities 
  resources :categories


end

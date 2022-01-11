Rails.application.routes.draw do
  resources :join_table_category_activities
  resources :category_ations
  resources :actions
  resources :categories
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

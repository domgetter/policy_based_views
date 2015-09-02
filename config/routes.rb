Rails.application.routes.draw do
  resources :entities
  resources :users
  resources :books
  root 'books#index'
end

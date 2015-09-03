Rails.application.routes.draw do
  resources :genres
  resources :entities
  resources :users
  resources :books
  root 'books#index'
end

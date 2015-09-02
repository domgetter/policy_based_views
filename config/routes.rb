Rails.application.routes.draw do
  resources :entities
  resources :books
  root 'books#index'
end

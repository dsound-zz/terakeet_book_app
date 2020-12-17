Rails.application.routes.draw do
  resources :book_reviews
  resources :book_formats
  resources :book_format_types
  resources :authors
  resources :publishers
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

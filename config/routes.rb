Rails.application.routes.draw do
  resources :categories
  resources :types
  resources :bookmarks

  get "/api", to: "categories#api"

  root 'bookmarks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

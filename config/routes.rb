Rails.application.routes.draw do
  root "posts#index"

  resources :posts

  resources :users
  get "/users" => "users#index"
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"

  resources :sessions
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end

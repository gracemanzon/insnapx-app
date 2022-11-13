Rails.application.routes.draw do
  resources :meetings
  root "posts#index"

  resources :posts

  resources :posts do
    resources :comments
  end

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

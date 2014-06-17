Rails.application.routes.draw do
  get '/' => "users#index"

  get '/signup' => "users#new"
  post '/signup' => "users#create"

  get '/profile/:id' => "users#show"

  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  get '/logout' => "sessions#destroy"
end

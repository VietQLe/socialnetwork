Rails.application.routes.draw do

  	get '/' => 'home#index'

  	get '/signup' => 'users#new'
	post '/signup' => 'users#create'
	get '/profile/:id' => 'users#show'

  	get '/login' => 'sessions#new'
  	post '/login' => 'sessions#create'
  	get '/logout' => 'sessions#destroy'

  	get '/profiles/:id/edit' => 'profiles#edit'
  	put '/profiles/:id' => 'profiles#update'

end
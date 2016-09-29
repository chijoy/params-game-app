Rails.application.routes.draw do
  get '/' => 'images#index'
  get '/images' => 'images#index'
  get '/images/new' => 'images#new'
  post '/images' => 'images#create'

  get '/images/:id' => 'images#show'

  get '/images/:id/edit' => 'images#edit'
  patch '/images/:id' => 'images#update'

  delete '/images/:id' => 'images#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end

Rails.application.routes.draw do
  get '/avatars/' => 'avatars#index'
  get '/avatars/:id' => 'avatars#show'
  get '/avatars/new' => 'avatars#new'
  post '/avatars' => 'avatars#create'

  get '/avatars/:id/edit' => 'avatars#edit'
  patch '/avatars/:id' => 'avatars#update'

  get '/avatars/:id' => 'avatars#destroy'
end

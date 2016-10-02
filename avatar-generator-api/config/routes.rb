Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/avatars/' => 'avatars#index'
      post '/avatars/' => 'avatars#create'
      get '/avatars/:id' => 'avatars#show'
      patch '/avatars/:id' => 'avatars#update'
      delete '/avatars/:id' => 'avatars#destroy'
    end
    namespace :v2 do
      get '/avatars/' => 'avatars#index'
      post '/avatars/' => 'avatars#create'
      get '/avatars/:id' => 'avatars#show'
      patch '/avatars/:id' => 'avatars#update'
      delete '/avatars/:id' => 'avatars#destroy'
    end
  end
end

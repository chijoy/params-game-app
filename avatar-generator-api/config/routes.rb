Rails.application.routes.draw do
  namespace :v1 do
    get '/avatars/' => 'avatars#index'
    get '/avatars/:id' => 'avatars#show'

    post '/avatars/' => 'avatars#create'

    patch '/avatars/:id' => 'avatars#update'

    delete '/avatars/:id' => 'avatars#destroy'
  end
  namespace :v2 do
    get '/avatars/' => 'avatars#index'
    get '/avatars/:id' => 'avatars#show'

    post '/avatars/' => 'avatars#create'

    patch '/avatars/:id' => 'avatars#update'

    delete '/avatars/:id' => 'avatars#destroy'
  end
end

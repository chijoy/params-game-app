Rails.application.routes.draw do
  get '/avatars/' => 'avatars#index'
  get '/avatars/:id' => 'avatars#show'
end

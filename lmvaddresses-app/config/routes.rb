Rails.application.routes.draw do
  get '/' => 'addresses#index'
  get '/addresses' => 'addresses#index'

  get '/addresses/new' => 'addresses#new'
  post '/addresses' => 'addresses#create'

  get '/addresses/:id' => 'addresses#show'

  get '/addresses/:id/edit' => 'addresses#edit'
  patch '/addresses/:id' => 'addresses#update'
end

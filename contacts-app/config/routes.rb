Rails.application.routes.draw do
  get '/one' => 'contacts#one'
  get '/all' => 'contacts#all'

  get '/new_contact' => 'contacts#new_contact'
  post '/new_contact' => 'contacts#create_contact'
end

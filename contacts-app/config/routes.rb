Rails.application.routes.draw do
  get '/one' => 'contacts#one'
  get '/all' => 'contacts#all'
end

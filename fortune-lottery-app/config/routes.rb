Rails.application.routes.draw do
  get '/fortune' => 'pages#fortune'
  get '/lottery' => 'pages#lottery'
  get '/count' => 'pages#page_visits'
end

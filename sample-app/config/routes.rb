Rails.application.routes.draw do
  get '/happy' => 'pages#home'
  get '/sad' => 'pages#dwarfs'
  get 'grumpy' => 'pages#grumpy'
  get 'sneezy' => 'pages#sneezy'
  get 'sleepy' => 'pages#sleepy'
  get '/' => 'pages#time'
  get '/money' => 'pages#money'
end

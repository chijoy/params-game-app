Rails.application.routes.draw do
  get '/query_params_game' => 'params_games#query'
  get '/guess_a_name' => 'params_games#guess'
end

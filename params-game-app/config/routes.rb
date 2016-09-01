Rails.application.routes.draw do
  get '/query_params_game' => 'params_games#query'
  get '/guess_a_name' => 'params_games#guess'
  get '/url_segment_example/:whatever' => 'params_games#url'
  get '/show_form' => 'params_examples#get_form'
  post '/send_form' => 'params_examples#send_form'
  get '/show_form_for_number_game' => 'params_games#guess_form'
  post '/send_form_for_number_game' => 'params_games#answer_form'

  get '/winter_is_coming' => 'params_examples#season_is_here'

end

Rails.application.routes.draw do
  get '/query_params_example' => 'params_examples#query'
end

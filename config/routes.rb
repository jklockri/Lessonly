Rails.application.routes.draw do
  get '/companies/index' => 'companies#index'
  get '/companies/alphabetically' => 'companies#alphabetically'
end

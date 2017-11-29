Rails.application.routes.draw do
  get '/companies/index' => 'companies#index'
  get '/companies/alphabetically' => 'companies#alphabetically'
  get '/companies/with_modern_plan' => 'companies#with_modern_plan'
   get '/companies/not_trialing' => 'companies#not_trialing'
end

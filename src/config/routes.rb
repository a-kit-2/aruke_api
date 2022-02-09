Rails.application.routes.draw do
  resources :users
  resources :goals

  #auth0
  get '/api/public', to: 'public#public'
  get '/api/private', to: 'private#private'
  get '/api/private-scoped', to: 'private#private_scoped'
end

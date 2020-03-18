Rails.application.routes.draw do
  resources :vehicles, only: [:create]
  post 'api/v1/gps/', to: 'gps_models#create'
  get 'show', to: 'application#show'
end

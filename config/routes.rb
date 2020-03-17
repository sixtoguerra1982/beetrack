Rails.application.routes.draw do
  get 'vehicles/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :vehicles
end

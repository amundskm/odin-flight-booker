Rails.application.routes.draw do
  resources :flights, only: [:index]
  resources :bookings, only: [:new, :create, :show]
  post '/filter', to: 'flights#filter'
  root to: 'flights#index'
end

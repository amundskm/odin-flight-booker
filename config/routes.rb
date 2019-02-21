Rails.application.routes.draw do
  resources  :flights
  resources :airports
  resources :bookings
  resources :passengers
end

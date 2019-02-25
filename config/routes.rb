Rails.application.routes.draw do
  resources :flights
  post 'filter', to: 'flights#filter'
  root to: 'flights#index'
end

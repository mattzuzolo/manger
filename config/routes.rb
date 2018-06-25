Rails.application.routes.draw do
  resources :boroughs
  resources :neighborhoods
  resources :restaurants
  resources :nations
  resources :continents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

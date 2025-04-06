Rails.application.routes.draw do
  root "home#index"
  devise_for :users
  resources :profiles
  resources :games
end

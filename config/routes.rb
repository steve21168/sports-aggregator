Rails.application.routes.draw do
  resources :teams
  resources :leagues
  resources :users

  get '/' => 'home#home', as: 'home'
end

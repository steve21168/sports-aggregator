Rails.application.routes.draw do
  resources :articles
  resources :teams
  resources :leagues
  resources :users

  get '/' => 'home#home', as: 'home'
end

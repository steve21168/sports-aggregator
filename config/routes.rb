Rails.application.routes.draw do
  resources :users

  get '/' => 'home#home', as: 'home'
end

Rails.application.routes.draw do
  resources :articles
  resources :teams
  resources :users

  get '/' => 'home#home', as: 'home'
  get '/leagues/mlb' => 'leagues#mlb', as: 'mlb'
  get '/leagues/nba' => 'leagues#nba', as: 'nba'
  get '/leagues/nfl' => 'leagues#nfl', as: 'nfl'
  get '/leagues/nhl' => 'leagues#nhl', as: 'nhl'
  get '/leagues/mlb/boxscores' => 'leagues#mlb_boxscores'

end

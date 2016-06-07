Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'sessions/registrations' }


  get '/' => 'home#home', as: 'home'
  get '/leagues/mlb' => 'leagues#mlb', as: 'mlb'
  get '/leagues/nba' => 'leagues#nba', as: 'nba'
  get '/leagues/nfl' => 'leagues#nfl', as: 'nfl'
  get '/leagues/nhl' => 'leagues#nhl', as: 'nhl'
  get '/leagues/mlb/boxscores' => 'leagues#mlb_boxscores'
  get '/leagues/nba/boxscores' => 'leagues#nba_boxscores'
  get '/leagues/nfl/boxscores' => 'leagues#nfl_boxscores'
  get '/leagues/nhl/boxscores' => 'leagues#nhl_boxscores'
  get '/leagues/nhl/scrape' => 'leagues#scrape_nhl'
  get '/leagues/nba/scrape' => 'leagues#scrape_nba'
  get '/leagues/nfl/scrape' => 'leagues#scrape_nfl'
  resources :users, only: [:edit, :update]
  resources :user_teams, only: [:edit, :update, :create]
end

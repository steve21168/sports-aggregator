class Team < ActiveRecord::Base
  has_many :user_teams
  has_many :users, through: :user_teams
  has_many :articles
  belongs_to :league
  has_many :mlb_boxscores
  has_many :nba_boxscores
  has_many :nfl_boxscores
  has_many :nhl_boxscores
end

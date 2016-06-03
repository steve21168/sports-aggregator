class User < ActiveRecord::Base
  has_many :user_teams
  has_many :teams, through: :user_teams
  has_many :user_leagues
  has_many :leagues, through: :user_leagues
end

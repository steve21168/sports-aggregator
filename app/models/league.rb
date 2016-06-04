class League < ActiveRecord::Base
  has_many :teams
  has_many :user_leagues
  has_many :users, through: :user_leagues
  has_many :articles
end

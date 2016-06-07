class Team < ActiveRecord::Base
  has_many :user_teams
  has_many :users, through: :user_teams
  has_many :articles
  belongs_to :league
  has_many :mlb_boxscores
  has_many :nba_boxscores
  has_many :nfl_boxscores
  has_many :nhl_boxscores


  def self.nba_teams
    League.find_by(abbreviation: "NBA").teams.sort_by { |team| team.team_name}
  end

  def self.nfl_teams
    League.find_by(abbreviation: "NFL").teams.sort_by { |team| team.team_name}
  end

  def self.nhl_teams
    League.find_by(abbreviation: "NHL").teams.sort_by { |team| team.team_name}
  end

  def self.mlb_teams
    League.find_by(abbreviation: "MLB").teams.sort_by { |team| team.team_name}
  end

end

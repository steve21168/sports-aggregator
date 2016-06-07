class MlbBoxscore < ActiveRecord::Base
  belongs_to :home_team, :class_name => 'Team'
  belongs_to :away_team, :class_name => 'Team'


  # 
  # def self.create_boxscores
  #   check = MlbBoxscore.where(game_date: Date.today - 1.day)
  #   if check.empty?
  #     full_date = DateTime.now - 1.day
  #     url = 'http://api.sportradar.us/mlb-t5/games/' + full_date.strftime("%Y") + '/' + full_date.strftime('%m') + '/' + full_date.strftime('%d') + '/boxscore.json?api_key=bcr8bwxuv8yhzwxrbmwzy4yk'
  #     mlb_boxscore = JSON.parse(open(url).read)
  #     binding.pry
  #     mlb_boxscore["league"]["games"].each do |g|
  #       boxscore = MlbBoxscore.new
  #       ##game day
  #       boxscore.game_date = mlb_boxscore["league"]["date"]
  #       ## home team
  #       boxscore.home_team = Team.find_by(team_name: g["game"]["home"]["market"] + " " + g["game"]["home"]["name"])
  #       boxscore.home_hits = g["game"]["home"]["hits"]
  #       boxscore.home_runs = g["game"]["home"]["runs"]
  #       boxscore.home_errors = g["game"]["home"]["errors"]
  #       ##away team
  #       boxscore.away_team = Team.find_by(team_name: g["game"]["away"]["market"] + " " + g["game"]["away"]["name"])
  #       boxscore.away_hits = g["game"]["away"]["hits"]
  #       boxscore.away_runs = g["game"]["away"]["runs"]
  #       boxscore.away_errors = g["game"]["away"]["errors"]
  #       ## game info
  #       boxscore.total_innings = g["game"]["final"]["inning"]
  #       boxscore.duration = g["game"]["duration"]
  #       #winning pitcher info
  #       boxscore.winning_pitcher = g["game"]["pitching"]["win"]["first_name"] + " " + g["game"]["pitching"]["win"]["last_name"]
  #       boxscore.winning_pitcher_record = g["game"]["pitching"]["win"]["win"].to_s + "-" + g["game"]["pitching"]["win"]["loss"].to_s#loss number
  #       # losing pitcher info
  #       boxscore.losing_pitcher = g["game"]["pitching"]["loss"]["first_name"] + " " + g["game"]["pitching"]["loss"]["last_name"]
  #       boxscore.losing_pitcher_record = g["game"]["pitching"]["loss"]["win"].to_s + "-" + g["game"]["pitching"]["loss"]["loss"].to_s#loss number
  #       #save info
  #       if g["game"]["pitching"]["save"]
  #         boxscore.save_pitcher = g["game"]["pitching"]["save"]["first_name"] + " " + g["game"]["pitching"]["save"]["last_name"]
  #         boxscore.save_pitcher_save_count = g["game"]["pitching"]["save"]["save"] #save number
  #       end
  #       binding.pry
  #       boxscore.save
  #     end
  #   end
  # end

end

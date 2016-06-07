class GetBoxscores

  def get_mlb_boxscores
    check = MlbBoxscore.where(game_date: Date.today - 1.day)
    if check.empty?
      full_date = DateTime.now - 1.day
      url = 'http://api.sportradar.us/mlb-t5/games/' + full_date.strftime("%Y") + '/' + full_date.strftime('%m') + '/' + full_date.strftime('%d') + '/boxscore.json?api_key=' + ENV["MLB_KEY"]
      mlb_boxscore = JSON.parse(open(url).read)
      mlb_boxscore["league"]["games"].each do |g|
        if !g['game']['rescheduled']
          boxscore = MlbBoxscore.new
          ##game day
          boxscore.game_date = mlb_boxscore["league"]["date"]
          ## home team
          boxscore.home_team = Team.find_by(team_name: g["game"]["home"]["name"])
          boxscore.home_hits = g["game"]["home"]["hits"]
          boxscore.home_runs = g["game"]["home"]["runs"]
          boxscore.home_errors = g["game"]["home"]["errors"]
          ##away team
          boxscore.away_team = Team.find_by(team_name: g["game"]["away"]["name"])
          boxscore.away_hits = g["game"]["away"]["hits"]
          boxscore.away_runs = g["game"]["away"]["runs"]
          boxscore.away_errors = g["game"]["away"]["errors"]
          ## game info
          boxscore.total_innings = g["game"]["final"]["inning"]
          boxscore.duration = g["game"]["duration"]
          #winning pitcher info
          boxscore.winning_pitcher = g["game"]["pitching"]["win"]["first_name"] + " " + g["game"]["pitching"]["win"]["last_name"]
          boxscore.winning_pitcher_record = g["game"]["pitching"]["win"]["win"].to_s + "-" + g["game"]["pitching"]["win"]["loss"].to_s#loss number
          # losing pitcher info
          boxscore.losing_pitcher = g["game"]["pitching"]["loss"]["first_name"] + " " + g["game"]["pitching"]["loss"]["last_name"]
          boxscore.losing_pitcher_record = g["game"]["pitching"]["loss"]["win"].to_s + "-" + g["game"]["pitching"]["loss"]["loss"].to_s#loss number
          #save info
          if g["game"]["pitching"]["save"]
            boxscore.save_pitcher = g["game"]["pitching"]["save"]["first_name"] + " " + g["game"]["pitching"]["save"]["last_name"]
            boxscore.save_pitcher_save_count = g["game"]["pitching"]["save"]["save"] #save number
          end
          boxscore.save
        end
      end
    end
  end

  def get_nfl_boxscores
    if NflBoxscore.all.length < 1
      url = "http://api.sportradar.us/nfl-t1/2015/PST/4/CAR/DEN/summary.json?api_key=" + ENV['NFL_KEY']
      nfl_boxscore = JSON.parse(open(url).read)
      game = NflBoxscore.new
      game.home_team = Team.find_by(team_name: nfl_boxscore["home_team"]["name"])
      game.away_team = Team.find_by(team_name: nfl_boxscore["away_team"]["name"])
      game.home_team_score = nfl_boxscore["home_team"]["points"]
      game.away_team_score = nfl_boxscore["away_team"]["points"]
      game.save
    end
  end

  def get_nhl_boxscores
    if NhlBoxscore.all.length < 1
      url = "http://api.sportradar.us/nhl-t3/games/8b2ea118-c494-4814-a14f-913f5a5611cd/boxscore.json?api_key=" + ENV["NHL_KEY"]
      nhl_boxscore = JSON.parse(open(url).read)
      game = NhlBoxscore.new
      game.home_team = Team.find_by(team_name: nhl_boxscore["home"]["name"])
      game.away_team = Team.find_by(team_name: nhl_boxscore["away"]["name"])
      game.home_team_score = nhl_boxscore["home"]["points"]
      game.away_team_score = nhl_boxscore["away"]["points"]
      game.save
    end
  end

  def get_nba_boxscores
    if NbaBoxscore.all.length < 1
      url = "http://api.sportradar.us/nba-t3/games/c503707f-579a-4a6a-bb77-8cdef63c5981/boxscore.json?api_key=" + ENV["NBA_KEY"]
      nba_boxscore = JSON.parse(open(url).read)
      game = NbaBoxscore.new
      game.home_team = Team.find_by(team_name: nba_boxscore["home"]["name"])
      game.away_team = Team.find_by(team_name: nba_boxscore["away"]["name"])
      game.home_team_score = nba_boxscore["home"]["points"]
      game.away_team_score = nba_boxscore["away"]["points"]
      game.save
    end
  end


  def self.run
    self.new.get_mlb_boxscores
    self.new.get_nfl_boxscores
    self.new.get_nba_boxscores
    self.new.get_nhl_boxscores
  end

  def self.run_test
  end

end

class LeaguesController < ApplicationController
  include Adapter

  def nba
    articles = ArticleFinder.new(find_league_object("NBA"))
    @cbs_articles = articles.five_most_recent("cbs")
    @espn_articles = articles.five_most_recent("espn")
    @yahoo_articles = articles.five_most_recent("yahoo")
    @team = current_user.teams.find_by(league_id: 2)
  end

  def nhl
    articles = ArticleFinder.new(find_league_object("NHL"))
    @cbs_articles = articles.five_most_recent("cbs")
    @espn_articles = articles.five_most_recent("espn")
    @yahoo_articles = articles.five_most_recent("yahoo")
    @team = current_user.teams.find_by(league_id: 4)
  end

  def mlb
    articles = ArticleFinder.new(find_league_object("MLB"))
    @cbs_articles = articles.five_most_recent("cbs")
    @espn_articles = articles.five_most_recent("espn")
    @yahoo_articles = articles.five_most_recent("yahoo")
    @team = current_user.teams.find_by(league_id: 1)
  end

  def nfl
    articles = ArticleFinder.new(find_league_object("NFL"))
    @cbs_articles = articles.five_most_recent("cbs")
    @espn_articles = articles.five_most_recent("espn")
    @yahoo_articles = articles.five_most_recent("yahoo")
    @team = current_user.teams.find_by(league_id: 3)
  end


  def mlb_boxscores
    boxscores =  MlbBoxscore.where(game_date: Date.today - 1.day)
    outbound_array = []
    boxscores.each do |box|
      hash = {boxscore: box, home_team: box.home_team, away_team: box.away_team}
      outbound_array << hash
    end
    render :json => outbound_array
  end

  def nfl_boxscores
    boxscores =  NflBoxscore.all
    outbound_array = []
    boxscores.each do |box|
      hash = {boxscore: box, home_team: box.home_team, away_team: box.away_team}
      outbound_array << hash
    end
    render :json => outbound_array
  end

  def nba_boxscores
    boxscores =  NbaBoxscore.all
    outbound_array = []
    boxscores.each do |box|
      hash = {boxscore: box, home_team: box.home_team, away_team: box.away_team}
      outbound_array << hash
    end
    render :json => outbound_array
  end

  def nhl_boxscores
    boxscores =  NhlBoxscore.all
    outbound_array = []
    boxscores.each do |box|
      hash = {boxscore: box, home_team: box.home_team, away_team: box.away_team}
      outbound_array << hash
    end
    render :json => outbound_array
  end


  def scrape_nhl
    scraper = Adapter::NhlScraper.new(current_user.teams.find_by(league_id: 4).team_name)
    render :json => scraper.live_scrape
  end

  def scrape_nba
    scraper = Adapter::NbaScraper.new(current_user.teams.find_by(league_id: 2).team_name)
    render :json => scraper.live_scrape
  end

  def scrape_nfl
    city = current_user.teams.find_by(league_id: 3).city.gsub(" ","")
    team_name = current_user.teams.find_by(league_id: 3).team_name.gsub(" ","")
    scraper = Adapter::NflScraper.new(city, team_name)
    render :json => scraper.live_scrape
  end


  private

  def find_league_object(league)
    League.includes(:articles).find_by(abbreviation: league)
  end
end

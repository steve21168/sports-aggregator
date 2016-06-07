class LeaguesController < ApplicationController
  include Adapter

  def nba
    articles = ArticleFinder.new(find_league_object("NBA"))
    set_articles(articles)
    @team = current_user.teams.find_by(league_id: 2)
  end

  def nhl
    articles = ArticleFinder.new(find_league_object("NHL"))
    set_articles(articles)
    @team = current_user.teams.find_by(league_id: 4)
  end

  def mlb
    articles = ArticleFinder.new(find_league_object("MLB"))
    set_articles(articles)
    @team = current_user.teams.find_by(league_id: 1)
  end

  def nfl
    articles = ArticleFinder.new(find_league_object("NFL"))
    set_articles(articles)
    @team = current_user.teams.find_by(league_id: 3)
  end


  def mlb_boxscores
    boxscores =  MlbBoxscore.where(game_date: Date.today - 1.day)
    render :json => boxscore_helper(boxscores)
  end

  def nfl_boxscores
    boxscores =  NflBoxscore.all
    render :json => boxscore_helper(boxscores)
  end

  def nba_boxscores
    boxscores =  NbaBoxscore.all
    render :json => boxscore_helper(boxscores)
  end

  def nhl_boxscores
    boxscores =  NhlBoxscore.all
    render :json => boxscore_helper(boxscores)
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
    abbreviation = current_user.teams.find_by(league_id: 3).abbreviation
    scraper = Adapter::NflScraper.new(city, team_name, abbreviation)
    render :json => scraper.live_scrape
  end

  private

  def boxscore_helper(boxscores)
    outbound_array = []
    boxscores.each do |box|
      hash = {boxscore: box, home_team: box.home_team, away_team: box.away_team}
      outbound_array << hash
    end
    outbound_array
  end

  def set_articles(articles)
    @cbs_articles = articles.five_most_recent("cbs")
    @espn_articles = articles.five_most_recent("espn")
    @yahoo_articles = articles.five_most_recent("yahoo")
  end

  def find_league_object(league)
    League.includes(:articles).find_by(abbreviation: league)
  end
end

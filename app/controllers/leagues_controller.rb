class LeaguesController < ApplicationController

  def nba
    articles = ArticleFinder.new(find_league_object("NBA"))
    @cbs_articles = articles.five_most_recent("cbs")
    @espn_articles = articles.five_most_recent("espn")
    @yahoo_articles = articles.five_most_recent("yahoo")
  end

  def nhl
    articles = ArticleFinder.new(find_league_object("NHL"))
    @cbs_articles = articles.five_most_recent("cbs")
    @espn_articles = articles.five_most_recent("espn")
    @yahoo_articles = articles.five_most_recent("yahoo")
  end

  def mlb
    articles = ArticleFinder.new(find_league_object("MLB"))
    @cbs_articles = articles.five_most_recent("cbs")
    @espn_articles = articles.five_most_recent("espn")
    @yahoo_articles = articles.five_most_recent("yahoo")
  end

  def nfl
    articles = ArticleFinder.new(find_league_object("NFL"))
    @cbs_articles = articles.five_most_recent("cbs")
    @espn_articles = articles.five_most_recent("espn")
    @yahoo_articles = articles.five_most_recent("yahoo")
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

  private

  def find_league_object(league)
    League.includes(:articles).find_by(abbreviation: league)
  end
end

class LeaguesController < ApplicationController

  def nba
    nba = League.find_by(abbreviation: "NBA")
    @cbs_articles = nba.articles.where(source: "cbs").limit(5)
    @espn_articles = nba.articles.where(source: "espn").limit(5)
    @yahoo_articles = nba.articles.where(source: "yahoo").limit(5)
  end

  def nhl
    nhl = League.find_by(abbreviation: "NHL")
    @cbs_articles = nhl.articles.where(source: "cbs").limit(5)
    @espn_articles = nhl.articles.where(source: "espn").limit(5)
    @yahoo_articles = nhl.articles.where(source: "yahoo").limit(5)
  end

  def mlb
    mlb = League.find_by(abbreviation: "MLB")
    @cbs_articles = mlb.articles.where(source: "cbs").limit(5)
    @espn_articles = mlb.articles.where(source: "espn").limit(5)
    @yahoo_articles = mlb.articles.where(source: "yahoo").limit(5)
  end

  def nfl
    nfl = League.find_by(abbreviation: "NFL")
    @cbs_articles = nfl.articles.where(source: "cbs").limit(5)
    @espn_articles = nfl.articles.where(source: "espn").limit(5)
    @yahoo_articles = nfl.articles.where(source: "yahoo").limit(5)
  end
end

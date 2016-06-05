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

  private

  def find_league_object(league)
    League.includes(:articles).find_by(abbreviation: league)
  end
end

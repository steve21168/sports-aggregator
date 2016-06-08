class HomeController < ApplicationController

  def home
    @articles = random_articles
    @last_updated = Article.last.created_at
  end

  private

  def random_articles
    articles = Article.all
    article_array = []
    10.times { article_array << articles.sample }
    article_array
  end

end

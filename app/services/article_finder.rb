class ArticleFinder
  attr_reader :league

  def initialize(league)
    @league = league
  end

  def five_most_recent(source)
    league.articles.where(source: source).last(5).reverse
  end
end

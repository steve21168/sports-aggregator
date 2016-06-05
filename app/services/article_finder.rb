class ArticleFinder
  attr_reader :league

  def initialize(league)
    @league = league
  end

  def five_most_recent(source)
    league.articles.order(created_at: 'desc').where(source: source).limit(5)
  end
end

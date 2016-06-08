class ResetArticle

  def reset_articles
    Article.destroy_all
  end

  def self.run
    ResetArticle.new.reset_articles
  end

end

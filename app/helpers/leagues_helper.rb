module LeaguesHelper
  def updated_at(last_updated)
    distance_of_time_in_words(Time.now, last_updated)
  end
end

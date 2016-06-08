module LeaguesHelper
  def updated_at(last_updated)
    distance_of_time_in_words(Time.now, last_updated)
  end

  def nfl_images
    ["lambeau", "nyg-car", "nyg-rb"].sample
  end

  def nhl_images
    ["nyr-goalie", "nyr-nyi", "hockey-arena", "mcdonagh"].sample
  end

  def baseball_images
    ["baseball-wide", "baseballs", "stadium", "baseball-home"].sample
  end

  def nba_images
    ["jordan", "basketball"].sample
  end

end

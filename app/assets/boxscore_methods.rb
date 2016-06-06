#for the mlb boxscore json file#

mlb_boxscore[:league][:games].each do |g|
    boxscore = MlbBoxscore.new
    ## home team
    boxscore.home_team = Team.find_by(name: g[:game][:home][:market] + " " + g[:game][:home][:name])
    boxscore.home_hits = g[:game][:home][:hits]
    boxscore.home_runs = g[:game][:home][:runs]
    boxscore.home_errors = g[:game][:home][:errors]
    ##away team
    boxscore.away_team = Team.find_by(name: g[:game][:away][:market] + " " + g[:game][:away][:name])
    boxscore.away_hits = g[:game][:away][:hits]
    boxscore.away_runs = g[:game][:away][:runs]
    boxscore.away_errors = g[:game][:away][:errors]
    ## game info
    boxscore.total_innings = g[:game][:final][:inning]
    boxscore.duration = g[:game][:duration]
    #winning pitcher info
    boxscore.winning_pitcher = g[:game][:pitching][:win][:first_name] + " " + g[:game][:pitching][:win][:last_name]
    boxscore.winning_pitcher_record = g[:game][:pitching][:win][:win] + "-" + g[:game][:pitching][:win][:loss]#loss number
    # losing pitcher info
    boxscore.losing_pitcher = g[:game][:pitching][:loss][:first_name] + " " + g[:game][:pitching][:loss][:last_name]
    boxscore.losing_pitcher_record = g[:game][:pitching][:loss][:win] + "-" + g[:game][:pitching][:loss][:loss]#loss number
    #save info
    boxscore.save_pitcher = g[:game][:pitching][:save][:first_name] + " " + g[:game][:pitching][:save][:last_name]
    boxscore .save_pitcher_save_count = g[:game][:pitching][:save][:save] #save number
  end


  # g = game hash
  def nba_box
    #teams
    g[:home][:market]
    g[:home][:name]
    g[:away][:market]
    g[:away][:name]

    #scoring
    #home
    g[:home][:scoring].each do |q|
      q[:number] #quarternum
      q[:points]
    end
    #away
    g[:away][:scoring].each do |q|
      q[:number] #quarternum
      q[:points]
    end

    #home leaders
    g[:home][:leaders][:points].each do |p|
      p[:full_name]
      p[:statistics][:points]
      p[:statistics][:rebounds]
      p[:statistics][:assists]
    end
    g[:home][:leaders][:rebounds].each do |p|
      p[:full_name]
      p[:statistics][:points]
      p[:statistics][:rebounds]
      p[:statistics][:assists]
    end
    g[:home][:leaders][:assists].each do |p|
      p[:full_name]
      p[:statistics][:points]
      p[:statistics][:rebounds]
      p[:statistics][:assists]
    end

    #away leaders
    g[:away][:leaders][:points].each do |p|
      p[:full_name]
      p[:statistics][:points]
      p[:statistics][:rebounds]
      p[:statistics][:assists]
    end
    g[:away][:leaders][:points].each do |p|
      p[:full_name]
      p[:statistics][:points]
      p[:statistics][:rebounds]
      p[:statistics][:assists]
    end
    g[:away][:leaders][:points].each do |p|
      p[:full_name]
      p[:statistics][:points]
      p[:statistics][:rebounds]
      p[:statistics][:assists]
    end
  end


  def nhl_box
    #Teams
    g[:home][:market]
    g[:home][:name]
    g[:away][:market]
    g[:away][:name]
    #scoring
    #home
    g[:home][:scoring].each do |q|
      q[:number] #period num
      q[:points]
    end
    #away
    g[:away][:scoring].each do |q|
      q[:number] #period num
      q[:points]
    end
    #goalie statistics
    #home goalie
    g[:home][:players].each do |p|
      if p[:position] == 'G' && p[:played] == true
        #this player is the goalie
        p[:full_name]
      end
    end
    #away goalie
    g[:away][:goaltending][:total][:saves]
    g[:away][:players].each do |p|
      if p[:position] == 'G' && p[:played] == true
        #this player is the goalie
        p[:full_name]
      end
    end
    g[:away][:goaltending][:total][:saves]



  end

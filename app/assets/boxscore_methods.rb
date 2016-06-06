#for the mlb boxscore json file#

mlb_boxscore[:league][:games].each do |g|
    ## home team
    g[:game][:home][:market] #city name
    g[:game][:home][:name] #team name
    g[:game][:home][:hits]
    g[:game][:home][:runs]
    g[:game][:home][:errors]
    ##away team
    g[:game][:away][:market]
    g[:game][:away][:name]
    g[:game][:away][:hits]
    g[:game][:away][:runs]
    g[:game][:away][:errors]
    ## game info
    g[:game][:final][:inning]
    g[:game][:duration]
    #winning pitcher info
    g[:game][:pitching][:win][:first_name]
    g[:game][:pitching][:win][:last_name]
    g[:game][:pitching][:win][:win] #win number
    g[:game][:pitching][:win][:loss]#loss number
    # losing pitcher info
    g[:game][:pitching][:loss][:first_name]
    g[:game][:pitching][:loss][:last_name]
    g[:game][:pitching][:loss][:win] #win number
    g[:game][:pitching][:loss][:loss]#loss number
    #save info
    g[:game][:pitching][:save][:first_name]
    g[:game][:pitching][:save][:last_name]
    g[:game][:pitching][:save][:save] #save number
    ##also available
    #scoring by inning
    #starting pitchers
    # "Events", I assume scoring events
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

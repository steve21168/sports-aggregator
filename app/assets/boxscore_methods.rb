# #for the mlb boxscore json file#
#
#
#
#   # g = game hash
#   def nba_box
#     #teams
#     g[:home][:market]
#     g[:home][:name]
#     g[:away][:market]
#     g[:away][:name]
#
#     #scoring
#     #home
#     g[:home][:scoring].each do |q|
#       q[:number] #quarternum
#       q[:points]
#     end
#     #away
#     g[:away][:scoring].each do |q|
#       q[:number] #quarternum
#       q[:points]
#     end
#
#     #home leaders
#     g[:home][:leaders][:points].each do |p|
#       p[:full_name]
#       p[:statistics][:points]
#       p[:statistics][:rebounds]
#       p[:statistics][:assists]
#     end
#     g[:home][:leaders][:rebounds].each do |p|
#       p[:full_name]
#       p[:statistics][:points]
#       p[:statistics][:rebounds]
#       p[:statistics][:assists]
#     end
#     g[:home][:leaders][:assists].each do |p|
#       p[:full_name]
#       p[:statistics][:points]
#       p[:statistics][:rebounds]
#       p[:statistics][:assists]
#     end
#
#     #away leaders
#     g[:away][:leaders][:points].each do |p|
#       p[:full_name]
#       p[:statistics][:points]
#       p[:statistics][:rebounds]
#       p[:statistics][:assists]
#     end
#     g[:away][:leaders][:points].each do |p|
#       p[:full_name]
#       p[:statistics][:points]
#       p[:statistics][:rebounds]
#       p[:statistics][:assists]
#     end
#     g[:away][:leaders][:points].each do |p|
#       p[:full_name]
#       p[:statistics][:points]
#       p[:statistics][:rebounds]
#       p[:statistics][:assists]
#     end
#   end
#
#
#   def nhl_box
#     #Teams
#     g[:home][:market]
#     g[:home][:name]
#     g[:away][:market]
#     g[:away][:name]
#     #scoring
#     #home
#     g[:home][:scoring].each do |q|
#       q[:number] #period num
#       q[:points]
#     end
#     #away
#     g[:away][:scoring].each do |q|
#       q[:number] #period num
#       q[:points]
#     end
#     #goalie statistics
#     #home goalie
#     g[:home][:players].each do |p|
#       if p[:position] == 'G' && p[:played] == true
#         #this player is the goalie
#         p[:full_name]
#       end
#     end
#     #away goalie
#     g[:away][:goaltending][:total][:saves]
#     g[:away][:players].each do |p|
#       if p[:position] == 'G' && p[:played] == true
#         #this player is the goalie
#         p[:full_name]
#       end
#     end
#     g[:away][:goaltending][:total][:saves]
#
#
#
#   end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Creating Leagues"
League.create!([
  {league_name: "Major League Baseball" , abbreviation: "MLB" , short_name: "baseball", logo: "http://content.sportslogos.net/logos/4/490/full/2001.gif"},
  {league_name: "National Basketball Association", abbreviation: "NBA", short_name: "basketball", logo: "http://content.sportslogos.net/logos/6/982/full/2971.gif"},
  {league_name: "National Football League", abbreviation: "NFL" , short_name: "football", logo: "http://content.sportslogos.net/logos/7/1007/full/dwuw5lojnwsj12vfe0hfa6z47.gif"},
  {league_name: "National Hockey League", abbreviation: "NHL", short_name: "hockey", logo: "http://content.sportslogos.net/logos/1/491/full/wkue6hfkzqs2bnl0efw8sihf7.png"}
  ])
  puts "Finished Leagues"
  puts "Starting MLB Teams"
Team.create!([
  {team_name: "Batimore Orioles", abbreviation: "BAL", city: "Baltimore", state: "Maryland", country: "USA", logo: "http://content.sportslogos.net/logos/53/52/thumbs/lty880yrmrra64y6tqfqmdnbf.gif", league_id:1},
  {team_name: "Boston Red Sox", abbreviation: "BOS" , city: "Boston" , state: "Massachusettes", country: "USA", logo: "http://content.sportslogos.net/logos/53/53/thumbs/c0whfsa9j0vbs079opk2s05lx.gif", league_id:1},
  {team_name: "Chicago White Sox", abbreviation: "CHW", city: "Chicago", state: "Illinois", country: "USA", logo: "http://content.sportslogos.net/logos/53/55/thumbs/oxvkprv7v4inf5dgqdebp0yse.gif", league_id:1},
  {team_name: "Clevland Indians", abbreviation: "CLE" , city: "Clevland", state: "Ohio", country: "USA", logo: "http://content.sportslogos.net/logos/53/57/thumbs/5753472014.gif", league_id:1},
  {team_name: "Detroit Tigers", abbreviation: "DET", city: "Detroit", state: "Michigan", country: "USA", logo: "http://content.sportslogos.net/logos/53/59/thumbs/5989642016.gif", league_id:1},
  {team_name: "Houston Astros", abbreviation:"HOU" , city: "Houston", state: "Texas", country: "USA", logo: "http://content.sportslogos.net/logos/53/4929/thumbs/492995032000.gif", league_id:1},
  {team_name: "Kansas City Royals", abbreviation: "KC", city: "Kansas City", state: "Missouri" , country: "USA", logo: "http://content.sportslogos.net/logos/53/62/thumbs/fmrl2b6xf5hruiike42gn62yu.gif", league_id:1},
  {team_name: "Los Angeles Angels of Anaheim", abbreviation: "LAA" , city: "Los Angeles", state: "California" , country: "USA", logo: "http://content.sportslogos.net/logos/53/922/thumbs/wsghhaxkh5qq0hdkbt1b5se41.gif", league_id:1},
  {team_name: "Minnesota Twins", abbreviation: "MIN" , city: "Minneapolis", state: "Minnesota", country: "USA", logo: "http://content.sportslogos.net/logos/53/65/thumbs/peii986yf4l42v3aa3hy0ovlf.gif", league_id:1},
  {team_name: "New York Yankees", abbreviation: "NYY" , city: "New York" , state: "New York", country: "USA", logo: "http://content.sportslogos.net/logos/53/68/thumbs/1256.gif", league_id:1},
  {team_name: "Oakland Athletics", abbreviation: "OAK", city: "Oakland", state: "California" , country: "USA", logo: "http://content.sportslogos.net/logos/53/69/thumbs/6xk2lpc36146pbg2kydf13e50.gif", league_id:1},
  {team_name: "Seattle Mariners", abbreviation: "SEA", city: "Seattle" , state: "Washington", country: "USA", logo: "http://content.sportslogos.net/logos/53/75/thumbs/1305.gif", league_id:1},
  {team_name: "Tampa Bay Rays", abbreviation: "TB", city: "Tampa Bay", state: "Florida", country: "USA", logo: "http://content.sportslogos.net/logos/53/2535/thumbs/qiru2jftx1a378eq8ad0s4ik4.gif", league_id:1},
  {team_name: "Texas Rangers", abbreviation: "TEX", city: "Arlington", state: "Texas" , country: "USA", logo: "http://content.sportslogos.net/logos/53/77/thumbs/ajfeh4oqeealq37er15r3673h.gif", league_id:1},
  {team_name: "Toronto Blue Jays", abbreviation: "TOR", city: "Toronto", state: "Ontario" , country: "Canada", logo: "http://content.sportslogos.net/logos/53/78/thumbs/2559d7603ouedg7ldhw0br4fn.gif", league_id:1},
  {team_name: "Arizona Diamondbacks", abbreviation: "AZ", city: "Phoenix", state: "Arizona", country: "USA", logo: "http://content.sportslogos.net/logos/54/50/thumbs/gnnnrbxcmjhdgeu6mavqk3945.gif", league_id:1},
  {team_name: "Atlanta Braves", abbreviation: "ATL", city: "Atlanta" , state: "Georgia", country: "USA", logo: "http://content.sportslogos.net/logos/54/51/thumbs/3kgwjp6heowkeg3w8zoow9ggy.gif", league_id:1},
  {team_name: "Chicago Cubs", abbreviation: "CHC", city: "Chicago", state: "Illinois", country: "USA", logo: "http://content.sportslogos.net/logos/54/54/thumbs/q9gvs07u72gc9xr3395u6jh68.gif", league_id:1},
  {team_name: "Cincinnati Reds", abbreviation: "CIN", city: "Cincinnati", state: "Ohio", country: "USA", logo: "http://content.sportslogos.net/logos/54/56/thumbs/z9e0rqit393ojiizsemd0t1hx.gif", league_id:1},
  {team_name: "Colorado Rockies", abbreviation: "COL", city: "Denver", state: "Colorado", country: "USA", logo: "http://content.sportslogos.net/logos/54/58/thumbs/ej4v6a8q5w5gegtf7ilqbhoz7.gif", league_id:1},
  {team_name: "Los Angeles Dodgers", abbreviation: "LAD", city: "Los Angeles", state: "California", country: "USA", logo: "http://content.sportslogos.net/logos/54/63/thumbs/efvfv5b5g1zgpsf56gb04lthx.gif", league_id:1},
  {team_name: "Miami Marlins", abbreviation: "MIA", city: "Miami", state: "Florida", country: "USA", logo: "http://content.sportslogos.net/logos/54/3637/thumbs/y6oklqzigo1ver57oxlt60ee0.gif", league_id:1},
  {team_name: "Milwaukee Brewers", abbreviation: "MIL", city: "Milwaukee", state: "Wisconsin", country: "USA", logo: "http://content.sportslogos.net/logos/54/64/thumbs/ophgazfdzfdkeugut9bdw3iyz.gif", league_id:1},
  {team_name: "New York Mets", abbreviation: "NYM", city: "New York", state: "New York", country: "USA", logo: "http://content.sportslogos.net/logos/54/67/thumbs/m01gfgeorgvbfw15fy04alujm.gif", league_id:1},
  {team_name: "Philadelphia Phillies", abbreviation: "PHI", city: "Philadelphia", state: "Pennsylvania", country: "USA", logo: "http://content.sportslogos.net/logos/54/70/thumbs/o4lmh7dq5e3uordl7hvk6i3ug.gif", league_id:1},
  {team_name: "Pittsburgh Pirates", abbreviation: "PIT", city: "Pittsburgh", state: "Pennsylvania", country: "USA", logo: "http://content.sportslogos.net/logos/54/71/thumbs/7112502014.gif", league_id:1},
  {team_name: "San Deigo Padres", abbreviation: "SD", city: "San Diego", state: "California", country: "USA", logo: "http://content.sportslogos.net/logos/54/73/thumbs/7343442015.gif", league_id:1},
  {team_name: "San Francisco Giants", abbreviation: "SF", city: "San Francisco", state: "California", country: "USA", logo: "http://content.sportslogos.net/logos/54/74/thumbs/cpqj6up5bvgpoedg5fwsk20ve.gif", league_id:1},
  {team_name: "St. Louis Cardinals", abbreviation: "STL", city: "St. Louis", state: "Missouri", country: "USA", logo: "http://content.sportslogos.net/logos/54/72/thumbs/3zhma0aeq17tktge1huh7yok5.gif", league_id:1},
  {team_name: "Washington Nationals", abbreviation: "WSH", city: "Washington DC", state: "Washington DC", country: "USA", logo: "http://content.sportslogos.net/logos/54/578/thumbs/rcehah9k0kekjkgzm077fflws.gif", league_id:1},
  ])

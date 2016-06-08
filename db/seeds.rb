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
  {team_name: "Orioles", abbreviation: "BAL", city: "Baltimore", state: "Maryland", country: "USA", logo: "http://content.sportslogos.net/logos/53/52/thumbs/lty880yrmrra64y6tqfqmdnbf.gif", league_id:1},
  {team_name: "Red Sox", abbreviation: "BOS" , city: "Boston" , state: "Massachusettes", country: "USA", logo: "http://content.sportslogos.net/logos/53/53/thumbs/c0whfsa9j0vbs079opk2s05lx.gif", league_id:1},
  {team_name: "White Sox", abbreviation: "CWS", city: "Chicago", state: "Illinois", country: "USA", logo: "http://content.sportslogos.net/logos/53/55/thumbs/oxvkprv7v4inf5dgqdebp0yse.gif", league_id:1},
  {team_name: "Indians", abbreviation: "CLE" , city: "Cleveland", state: "Ohio", country: "USA", logo: "http://content.sportslogos.net/logos/53/57/thumbs/5753472014.gif", league_id:1},
  {team_name: "Tigers", abbreviation: "DET", city: "Detroit", state: "Michigan", country: "USA", logo: "http://content.sportslogos.net/logos/53/59/thumbs/5989642016.gif", league_id:1},
  {team_name: "Astros", abbreviation:"HOU" , city: "Houston", state: "Texas", country: "USA", logo: "http://content.sportslogos.net/logos/53/4929/thumbs/492995032000.gif", league_id:1},
  {team_name: "Royals", abbreviation: "KC", city: "Kansas City", state: "Missouri" , country: "USA", logo: "http://content.sportslogos.net/logos/53/62/thumbs/fmrl2b6xf5hruiike42gn62yu.gif", league_id:1},
  {team_name: "Angels", abbreviation: "ANA" , city: "Los Angeles", state: "California" , country: "USA", logo: "http://content.sportslogos.net/logos/53/922/thumbs/wsghhaxkh5qq0hdkbt1b5se41.gif", league_id:1},
  {team_name: "Twins", abbreviation: "MIN" , city: "Minneapolis", state: "Minnesota", country: "USA", logo: "http://content.sportslogos.net/logos/53/65/thumbs/peii986yf4l42v3aa3hy0ovlf.gif", league_id:1},
  {team_name: "Yankees", abbreviation: "NYY" , city: "New York" , state: "New York", country: "USA", logo: "http://content.sportslogos.net/logos/53/68/thumbs/1256.gif", league_id:1},
  {team_name: "Athletics", abbreviation: "OAK", city: "Oakland", state: "California" , country: "USA", logo: "http://content.sportslogos.net/logos/53/69/thumbs/6xk2lpc36146pbg2kydf13e50.gif", league_id:1},
  {team_name: "Mariners", abbreviation: "SEA", city: "Seattle" , state: "Washington", country: "USA", logo: "http://content.sportslogos.net/logos/53/75/thumbs/1305.gif", league_id:1},
  {team_name: "Rays", abbreviation: "TB", city: "Tampa Bay", state: "Florida", country: "USA", logo: "http://content.sportslogos.net/logos/53/2535/thumbs/qiru2jftx1a378eq8ad0s4ik4.gif", league_id:1},
  {team_name: "Rangers", abbreviation: "TEX", city: "Arlington", state: "Texas" , country: "USA", logo: "http://content.sportslogos.net/logos/53/77/thumbs/ajfeh4oqeealq37er15r3673h.gif", league_id:1},
  {team_name: "Blue Jays", abbreviation: "TOR", city: "Toronto", state: "Ontario" , country: "Canada", logo: "http://content.sportslogos.net/logos/53/78/thumbs/2559d7603ouedg7ldhw0br4fn.gif", league_id:1},
  {team_name: "Diamondbacks", abbreviation: "ARI", city: "Phoenix", state: "Arizona", country: "USA", logo: "http://content.sportslogos.net/logos/54/50/thumbs/gnnnrbxcmjhdgeu6mavqk3945.gif", league_id:1},
  {team_name: "Braves", abbreviation: "ATL", city: "Atlanta" , state: "Georgia", country: "USA", logo: "http://content.sportslogos.net/logos/54/51/thumbs/3kgwjp6heowkeg3w8zoow9ggy.gif", league_id:1},
  {team_name: "Cubs", abbreviation: "CHC", city: "Chicago", state: "Illinois", country: "USA", logo: "http://content.sportslogos.net/logos/54/54/thumbs/q9gvs07u72gc9xr3395u6jh68.gif", league_id:1},
  {team_name: "Reds", abbreviation: "CIN", city: "Cincinnati", state: "Ohio", country: "USA", logo: "http://content.sportslogos.net/logos/54/56/thumbs/z9e0rqit393ojiizsemd0t1hx.gif", league_id:1},
  {team_name: "Rockies", abbreviation: "COL", city: "Denver", state: "Colorado", country: "USA", logo: "http://content.sportslogos.net/logos/54/58/thumbs/ej4v6a8q5w5gegtf7ilqbhoz7.gif", league_id:1},
  {team_name: "Dodgers", abbreviation: "LA", city: "Los Angeles", state: "California", country: "USA", logo: "http://content.sportslogos.net/logos/54/63/thumbs/efvfv5b5g1zgpsf56gb04lthx.gif", league_id:1},
  {team_name: "Marlins", abbreviation: "MIA", city: "Miami", state: "Florida", country: "USA", logo: "http://content.sportslogos.net/logos/54/3637/thumbs/y6oklqzigo1ver57oxlt60ee0.gif", league_id:1},
  {team_name: "Brewers", abbreviation: "MIL", city: "Milwaukee", state: "Wisconsin", country: "USA", logo: "http://content.sportslogos.net/logos/54/64/thumbs/ophgazfdzfdkeugut9bdw3iyz.gif", league_id:1},
  {team_name: "Mets", abbreviation: "NYM", city: "New York", state: "New York", country: "USA", logo: "http://content.sportslogos.net/logos/54/67/thumbs/m01gfgeorgvbfw15fy04alujm.gif", league_id:1},
  {team_name: "Phillies", abbreviation: "PHI", city: "Philadelphia", state: "Pennsylvania", country: "USA", logo: "http://content.sportslogos.net/logos/54/70/thumbs/o4lmh7dq5e3uordl7hvk6i3ug.gif", league_id:1},
  {team_name: "Pirates", abbreviation: "PIT", city: "Pittsburgh", state: "Pennsylvania", country: "USA", logo: "http://content.sportslogos.net/logos/54/71/thumbs/7112502014.gif", league_id:1},
  {team_name: "Padres", abbreviation: "SD", city: "San Diego", state: "California", country: "USA", logo: "http://content.sportslogos.net/logos/54/73/thumbs/7343442015.gif", league_id:1},
  {team_name: "Giants", abbreviation: "SF", city: "San Francisco", state: "California", country: "USA", logo: "http://content.sportslogos.net/logos/54/74/thumbs/cpqj6up5bvgpoedg5fwsk20ve.gif", league_id:1},
  {team_name: "Cardinals", abbreviation: "STL", city: "St Louis", state: "Missouri", country: "USA", logo: "http://content.sportslogos.net/logos/54/72/thumbs/3zhma0aeq17tktge1huh7yok5.gif", league_id:1},
  {team_name: "Nationals", abbreviation: "WAS", city: "Washington", state: "Washington DC", country: "USA", logo: "http://content.sportslogos.net/logos/54/578/thumbs/rcehah9k0kekjkgzm077fflws.gif", league_id:1},
  ])
  puts "Finished MLB Teams"
  puts "Starting NBA Teams"
Team.create!([
  {team_name: "Hawks", abbreviation: "ATL", city: "Atlanta", state: "Georgia", country: "USA", logo: "http://content.sportslogos.net/logos/6/220/thumbs/22091682016.gif", league_id:2},
  {team_name: "Celtics", abbreviation: "BOS", city: "Boston", state: "Massachusettes", country: "USA", logo: "http://content.sportslogos.net/logos/6/213/thumbs/slhg02hbef3j1ov4lsnwyol5o.gif", league_id:2},
  {team_name: "Nets", abbreviation: "BKN", city: "Brookyln", state: "New York", country: "USA", logo: "http://content.sportslogos.net/logos/6/3786/thumbs/hsuff5m3dgiv20kovde422r1f.gif", league_id:2},
  {team_name: "Hornets", abbreviation: "CHA", city: "Charlotte", state: "North Carolina", country: "USA", logo: "http://content.sportslogos.net/logos/6/5120/thumbs/512019262015.gif", league_id:2},
  {team_name: "Bulls", abbreviation: "CHI", city: "Chicago", state: "Illinois", country: "USA", logo: "http://content.sportslogos.net/logos/6/221/thumbs/hj3gmh82w9hffmeh3fjm5h874.gif", league_id:2},
  {team_name: "Cavaliers", abbreviation: "CLE", city: "Cleveland", state: "Ohio", country: "USA", logo: "http://content.sportslogos.net/logos/6/222/thumbs/e4701g88mmn7ehz2baynbs6e0.gif", league_id:2},
  {team_name: "Mavericks", abbreviation: "DAL", city: "Dallas", state: "Texas", country: "USA", logo: "http://content.sportslogos.net/logos/6/228/thumbs/ifk08eam05rwxr3yhol3whdcm.gif", league_id:2},
  {team_name: "Nuggets", abbreviation: "DEN", city: "Denver", state: "Colorado", country: "USA", logo: "http://content.sportslogos.net/logos/6/229/thumbs/xeti0fjbyzmcffue57vz5o1gl.gif", league_id:2},
  {team_name: "Pistons", abbreviation: "DET", city: "Detroit", state: "Michigan", country: "USA", logo: "http://content.sportslogos.net/logos/6/223/thumbs/3079.gif", league_id:2},
  {team_name: "Warriors", abbreviation: "GSW", city: "Oakland", state: "California", country: "USA", logo: "http://content.sportslogos.net/logos/6/235/thumbs/qhhir6fj8zp30f33s7sfb4yw0.gif", league_id:2},
  {team_name: "Rockets", abbreviation: "HOU", city: "Houston", state: "Texas", country: "USA", logo: "http://content.sportslogos.net/logos/6/230/thumbs/8xe4813lzybfhfl14axgzzqeq.gif", league_id:2},
  {team_name: "Pacers", abbreviation: "IND", city: "Indianapolis", state: "Indiana", country: "USA", logo: "http://content.sportslogos.net/logos/6/224/thumbs/3083.gif", league_id:2},
  {team_name: "Clippers", abbreviation: "LAC", city: "Los Angeles", state: "California", country: "USA", logo: "http://content.sportslogos.net/logos/6/236/thumbs/23654622016.gif", league_id:2},
  {team_name: "Lakers", abbreviation: "LAL", city: "Los Angeles", state: "California", country: "USA", logo: "http://content.sportslogos.net/logos/6/237/thumbs/uig7aiht8jnpl1szbi57zzlsh.gif", league_id:2},
  {team_name: "Grizzlies", abbreviation: "MEM", city: "Memphis", state: "Tennesse", country: "USA", logo: "http://content.sportslogos.net/logos/6/231/thumbs/793.gif", league_id:2},
  {team_name: "Heat", abbreviation: "MIA", city: "Miami", state: "Florida", country: "USA", logo: "http://content.sportslogos.net/logos/6/214/thumbs/burm5gh2wvjti3xhei5h16k8e.gif", league_id:2},
  {team_name: "Bucks", abbreviation: "MIL", city: "Milwaukee", state: "Wisconsin", country: "USA", logo: "http://content.sportslogos.net/logos/6/225/thumbs/22582752016.gif", league_id:2},
  {team_name: "Timberwolves", abbreviation: "MIN", city: "Minneapolis", state: "Minnesota", country: "USA", logo: "http://content.sportslogos.net/logos/6/232/thumbs/zq8qkfni1g087f4245egc32po.gif", league_id:2},
  {team_name: "Pelicans", abbreviation: "NO", city: "New Orleans", state: "Lousiana", country: "USA", logo: "http://content.sportslogos.net/logos/6/4962/thumbs/496226812014.gif", league_id:2},
  {team_name: "Knicks", abbreviation: "NYK", city: "New York", state: "New York", country: "USA", logo: "http://content.sportslogos.net/logos/6/216/thumbs/2nn48xofg0hms8k326cqdmuis.gif", league_id:2},
  {team_name: "Thunder", abbreviation: "OKC", city: "Oklahoma City", state: "Oklahoma", country: "USA", logo: "http://content.sportslogos.net/logos/6/2687/thumbs/khmovcnezy06c3nm05ccn0oj2.gif", league_id:2},
  {team_name: "Magic", abbreviation: "ORL", city: "Orlando", state: "Florida", country: "USA", logo: "http://content.sportslogos.net/logos/6/217/thumbs/wd9ic7qafgfb0yxs7tem7n5g4.gif", league_id:2},
  {team_name: "Sixers", abbreviation: "PHI", city: "Philadelphia", state: "Pennsylvania", country: "USA", logo: "http://content.sportslogos.net/logos/6/218/thumbs/21870342016.gif", league_id:2},
  {team_name: "Suns", abbreviation: "PHX", city: "Phoenix", state: "Arizona", country: "USA", logo: "http://content.sportslogos.net/logos/6/238/thumbs/23843702014.gif", league_id:2},
  {team_name: "Blazers", abbreviation: "POR", city: "Portland", state: "Washington", country: "USA", logo: "http://content.sportslogos.net/logos/6/239/thumbs/bahmh46cyy6eod2jez4g21buk.gif", league_id:2},
  {team_name: "Kings", abbreviation: "SAC", city: "Sacramento", state: "California", country: "USA", logo: "http://content.sportslogos.net/logos/6/240/thumbs/24040432017.gif", league_id:2},
  {team_name: "Spurs", abbreviation: "SAS", city: "San Antonio", state: "Texas", country: "USA", logo: "http://content.sportslogos.net/logos/6/233/thumbs/827.gif", league_id:2},
  {team_name: "Raptors", abbreviation: "TOR", city: "Toronto", state: "Ontario", country: "Canada", logo: "http://content.sportslogos.net/logos/6/227/thumbs/22745782016.gif", league_id:2},
  {team_name: "Jazz", abbreviation: "UTH", city: "Salt Lake City", state: "Utah", country: "USA", logo: "http://content.sportslogos.net/logos/6/234/thumbs/23467492017.gif", league_id:2},
  {team_name: "Wizards", abbreviation: "WSH", city: "Washington DC", state: "Washington DC", country: "USA", logo: "http://content.sportslogos.net/logos/6/219/thumbs/21956712016.gif", league_id:2}
  ])
  puts "Finished NBA Teams"
  puts "Starting NFL Teams"
Team.create!([
  {team_name: "Cardinals", abbreviation: "ARZ", city: "Phoenix", state: "Arizona", country: "USA", logo: "http://content.sportslogos.net/logos/7/177/thumbs/kwth8f1cfa2sch5xhjjfaof90.gif", league_id:3},
  {team_name: "Falcons", abbreviation: "ATL", city: "Atlanta", state: "Georgia", country: "USA", logo: "http://content.sportslogos.net/logos/7/173/thumbs/299.gif", league_id:3},
  {team_name: "Ravens", abbreviation: "BAL", city: "Baltimore", state: "Maryland", country: "USA", logo: "http://content.sportslogos.net/logos/7/153/thumbs/318.gif", league_id:3},
  {team_name: "Bills", abbreviation: "BUF", city: "Buffalo", state: "New York", country: "USA", logo: "http://content.sportslogos.net/logos/7/149/thumbs/n0fd1z6xmhigb0eej3323ebwq.gif", league_id:3},
  {team_name: "Panthers", abbreviation: "CAR", city: "Charlotte", state: "North Carolina", country: "USA", logo: "http://content.sportslogos.net/logos/7/174/thumbs/f1wggq2k8ql88fe33jzhw641u.gif", league_id:3},
  {team_name: "Bears", abbreviation: "CHI", city: "Chicago", state: "Illinois", country: "USA", logo: "http://content.sportslogos.net/logos/7/169/thumbs/364.gif", league_id:3},
  {team_name: "Bengals", abbreviation: "CIN", city: "Cincinnati", state: "Ohio", country: "USA", logo: "http://content.sportslogos.net/logos/7/154/thumbs/403.gif", league_id:3},
  {team_name: "Browns", abbreviation: "CLE", city: "Cleveland", state: "Ohio", country: "USA", logo: "http://content.sportslogos.net/logos/7/155/thumbs/15578552015.gif", league_id:3},
  {team_name: "Cowboys", abbreviation: "DAL", city: "Dallas", state: "Texas", country: "USA", logo: "http://content.sportslogos.net/logos/7/165/thumbs/406.gif", league_id:3},
  {team_name: "Broncos", abbreviation: "DEN", city: "Denver", state: "Colorado", country: "USA", logo: "http://content.sportslogos.net/logos/7/161/thumbs/9ebzja2zfeigaziee8y605aqp.gif", league_id:3},
  {team_name: "Lions", abbreviation: "DET", city: "Detroit", state: "Michigan", country: "USA", logo: "http://content.sportslogos.net/logos/7/170/thumbs/cwuyv0w15ruuk34j9qnfuoif9.gif", league_id:3},
  {team_name: "Packers", abbreviation: "GB", city: "Green Bay", state: "Wisconsin", country: "USA", logo: "http://content.sportslogos.net/logos/7/171/thumbs/dcy03myfhffbki5d7il3.gif", league_id:3},
  {team_name: "Texans", abbreviation: "HOU", city: "Houston", state: "Texas", country: "USA", logo: "http://content.sportslogos.net/logos/7/157/thumbs/570.gif", league_id:3},
  {team_name: "Colts", abbreviation: "IND", city: "Indianapolis", state: "Indiana", country: "USA", logo: "http://content.sportslogos.net/logos/7/158/thumbs/593.gif", league_id:3},
  {team_name: "Jaguars", abbreviation: "JAX", city: "Jacksonville", state: "Florida", country: "USA", logo: "http://content.sportslogos.net/logos/7/159/thumbs/15988562013.gif", league_id:3},
  {team_name: "Chiefs", abbreviation: "KC", city: "Kansas City", state: "Missouri", country: "USA", logo: "http://content.sportslogos.net/logos/7/162/thumbs/857.gif", league_id:3},
  {team_name: "Rams", abbreviation: "LA", city: "Los Angeles", state: "California", country: "USA", logo: "http://content.sportslogos.net/logos/7/5941/thumbs/594153172016.gif", league_id:3},
  {team_name: "Dolphins", abbreviation: "MIA", city: "Miami", state: "Florida", country: "USA", logo: "http://content.sportslogos.net/logos/7/150/thumbs/15041052013.gif", league_id:3},
  {team_name: "Vikings", abbreviation: "MIN", city: "Minneapolis", state: "Minnesota", country: "USA", logo: "http://content.sportslogos.net/logos/7/172/thumbs/17227042013.gif", league_id:3},
  {team_name: "Patriots", abbreviation: "NE", city: "Foxboro", state: "Massachusettes", country: "USA", logo: "http://content.sportslogos.net/logos/7/151/thumbs/y71myf8mlwlk8lbgagh3fd5e0.gif", league_id:3},
  {team_name: "Saints", abbreviation: "NO", city: "New Orleans", state: "Lousiana", country: "USA", logo: "http://content.sportslogos.net/logos/7/175/thumbs/907.gif", league_id:3},
  {team_name: "Giants", abbreviation: "NYG", city: "New York", state: "New York", country: "USA", logo: "http://content.sportslogos.net/logos/7/166/thumbs/919.gif", league_id:3},
  {team_name: "Jets", abbreviation: "NYJ", city: "New York", state: "New York", country: "USA", logo: "http://content.sportslogos.net/logos/7/152/thumbs/v7tehkwthrwefgounvi7znf5k.gif", league_id:3},
  {team_name: "Raiders", abbreviation: "OAK", city: "Oakland", state: "California", country: "USA", logo: "http://content.sportslogos.net/logos/7/163/thumbs/g9mgk6x3ge26t44cccm9oq1vl.gif", league_id:3},
  {team_name: "Eagles", abbreviation: "PHI", city: "Philadelphia", state: "Pennsylvania", country: "USA", logo: "http://content.sportslogos.net/logos/7/167/thumbs/960.gif", league_id:3},
  {team_name: "Steelers", abbreviation: "PIT", city: "Pittsburgh", state: "Pennsylvania", country: "USA", logo: "http://content.sportslogos.net/logos/7/156/thumbs/970.gif", league_id:3},
  {team_name: "Chargers", abbreviation: "SD", city: "San Diego", state: "California", country: "USA", logo: "http://content.sportslogos.net/logos/7/164/thumbs/8e1jhgblydtow4m3okwzxh67k.gif", league_id:3},
  {team_name: "49ers", abbreviation: "SF", city: "San Francisco", state: "California", country: "USA", logo: "http://content.sportslogos.net/logos/7/179/thumbs/17994552009.gif", league_id:3},
  {team_name: "Seahawks", abbreviation: "SEA", city: "Seattle", state: "Washington", country: "USA", logo: "http://content.sportslogos.net/logos/7/180/thumbs/pfiobtreaq7j0pzvadktsc6jv.gif", league_id:3},
  {team_name: "Buccaneers", abbreviation: "TB", city: "Tampa Bay", state: "Florida", country: "USA", logo: "http://content.sportslogos.net/logos/7/176/thumbs/17636702014.gif", league_id:3},
  {team_name: "Titans", abbreviation: "TEN", city: "Memphis", state: "Tennesee", country: "USA", logo: "http://content.sportslogos.net/logos/7/160/thumbs/1053.gif", league_id:3},
  {team_name: "Redskins", abbreviation: "WAS", city: "Washington DC", state: "Washington DC", country: "USA", logo: "http://content.sportslogos.net/logos/7/168/thumbs/im5xz2q9bjbg44xep08bf5czq.gif", league_id:3}
  ])
  puts "Finished NFL Teams"
  puts "Startings NHL Teams"
Team.create!([
  {team_name: "Ducks", abbreviation: "ANA", city: "Anaheim", state: "California", country: "USA", logo: "http://content.sportslogos.net/logos/1/1736/thumbs/173616512014.gif", league_id: 4},
  {team_name: "Coyotes", abbreviation: "ARI", city: "Phoenix", state: "Arizona", country: "USA", logo: "http://content.sportslogos.net/logos/1/5263/thumbs/526378072015.gif", league_id: 4},
  {team_name: "Bruins", abbreviation: "BOS", city: "Boston", state: "Massachusettes", country: "USA", logo: "http://content.sportslogos.net/logos/1/3/thumbs/venf9fmhgnsawnxxvehf.gif", league_id: 4},
  {team_name: "Sabres", abbreviation: "BUF", city: "Buffalo", state: "New York", country: "USA", logo: "http://content.sportslogos.net/logos/1/4/thumbs/i40oxcdbo7xtfamqqhqachoyo.gif", league_id: 4},
  {team_name: "Flames", abbreviation: "CAL", city: "Calgary", state: "Alberta", country: "Canada", logo: "http://content.sportslogos.net/logos/1/5/thumbs/50.gif", league_id: 4},
  {team_name: "Hurricanes", abbreviation: "CAR", city: "Raleigh", state: "North Carolina", country: "USA", logo: "http://content.sportslogos.net/logos/1/6/thumbs/fotih31tn5r345nufo5xxayh3.gif", league_id: 4},
  {team_name: "Blackhawks", abbreviation: "CHI", city: "Chicago", state: "Illinois", country: "USA", logo: "http://content.sportslogos.net/logos/1/7/thumbs/56.gif", league_id: 4},
  {team_name: "Avalanche", abbreviation: "COL", city: "Denver", state: "Colorado", country: "USA", logo: "http://content.sportslogos.net/logos/1/8/thumbs/64.gif", league_id: 4},
  {team_name: "Blue Jackets", abbreviation: "COL", city: "Columbus", state: "Ohio", country: "USA", logo: "http://content.sportslogos.net/logos/1/9/thumbs/jhepegs329pc7ugyypebl28wg.gif", league_id: 4},
  {team_name: "Stars", abbreviation: "DAL", city: "Dallas", state: "Texas", country: "USA", logo: "http://content.sportslogos.net/logos/1/10/thumbs/1079172014.gif", league_id: 4},
  {team_name: "Red Wings", abbreviation: "DET", city: "Detroit", state: "Michigan", country: "USA", logo: "http://content.sportslogos.net/logos/1/11/thumbs/yo3wysbjtagzmwj37tb11u0fh.gif", league_id: 4},
  {team_name: "Oilers", abbreviation: "EDM", city: "Edmonton", state: "Alberta", country: "Canada", logo: "http://content.sportslogos.net/logos/1/12/thumbs/6cphie5heyvfwn6lbzfowe61h.gif", league_id: 4},
  {team_name: "Panthers", abbreviation: "FL", city: "Miami", state: "Florida", country: "USA", logo: "http://content.sportslogos.net/logos/1/13/thumbs/1380782017.gif", league_id: 4},
  {team_name: "Kings", abbreviation: "LA", city: "Los Angeles", state: "California", country: "USA", logo: "http://content.sportslogos.net/logos/1/14/thumbs/71jepx81eqzz1l6q9g1g5j1lh.gif", league_id: 4},
  {team_name: "Wild", abbreviation: "MIN", city: "Minneapolis", state: "Minnesota", country: "USA", logo: "http://content.sportslogos.net/logos/1/15/thumbs/1588102014.gif", league_id: 4},
  {team_name: "Canadians", abbreviation: "MON", city: "Montreal", state: "Quebec", country: "Canada", logo: "http://content.sportslogos.net/logos/1/16/thumbs/124.gif", league_id: 4},
  {team_name: "Predators", abbreviation: "NSH", city: "Nashville", state: "Tennesee", country: "USA", logo: "http://content.sportslogos.net/logos/1/17/thumbs/lvchw3qfsun2e7oc02kh2zxb6.gif", league_id: 4},
  {team_name: "Devils", abbreviation: "NJ", city: "Newark", state: "New Jersey", country: "USA", logo: "http://content.sportslogos.net/logos/1/18/thumbs/32tfs723a3bes0p0hb4hgcy1u.gif", league_id: 4},
  {team_name: "Islanders", abbreviation: "NYI", city: "Brooklyn", state: "New York", country: "USA", logo: "http://content.sportslogos.net/logos/1/19/thumbs/79520qbne58r9i71zhuggbff0.gif", league_id: 4},
  {team_name: "Rangers", abbreviation: "NYR", city: "New York", state: "New York", country: "USA", logo: "http://content.sportslogos.net/logos/1/20/thumbs/144.gif", league_id: 4},
  {team_name: "Senators", abbreviation: "OTT", city: "Ottawa", state: "Ontario", country: "Canada", logo: "http://content.sportslogos.net/logos/1/21/thumbs/2bkf2l3xyxi5p0cavbj8.gif", league_id: 4},
  {team_name: "Flyers", abbreviation: "PHI", city: "Philadelphia", state: "Pennsylvania", country: "USA", logo: "http://content.sportslogos.net/logos/1/22/thumbs/161.gif", league_id: 4},
  {team_name: "Penguins", abbreviation: "PIT", city: "Pittsburgh", state: "Pennsylvania", country: "USA", logo: "http://content.sportslogos.net/logos/1/24/thumbs/174.gif", league_id: 4},
  {team_name: "Sharks", abbreviation: "SJ", city: "San Jose", state: "California", country: "USA", logo: "http://content.sportslogos.net/logos/1/26/thumbs/dmo1xf3z4pph27vmg3gf.gif", league_id: 4},
  {team_name: "Blues", abbreviation: "STL", city: "St. Louis", state: "Missouri", country: "USA", logo: "http://content.sportslogos.net/logos/1/25/thumbs/187.gif", league_id: 4},
  {team_name: "Lightning", abbreviation: "TB", city: "Tampa Bay", state: "Florida", country: "USA", logo: "http://content.sportslogos.net/logos/1/27/thumbs/97hhvk8e5if0riesnex30etgz.gif", league_id: 4},
  {team_name: "Leafs", abbreviation: "TOR", city: "Toronto", state: "Ontario", country: "Canada", logo: "http://content.sportslogos.net/logos/1/28/thumbs/2887612017.gif", league_id: 4},
  {team_name: "Canucks", abbreviation: "VAN", city: "Vancouver", state: "British Columbia", country: "Canada", logo: "http://content.sportslogos.net/logos/1/29/thumbs/tlxz9higxwygaehl0j5h.gif", league_id: 4},
  {team_name: "Capitals", abbreviation: "WAS", city: "Washington DC", state: "Washington DC", country: "USA", logo: "http://content.sportslogos.net/logos/1/30/thumbs/llrs2zxi127vkqgcsvfb.gif", league_id: 4},
  {team_name: "Jets", abbreviation: "WIN", city: "Winnepeg", state: "Manitoba", country: "Canada", logo: "http://content.sportslogos.net/logos/1/3050/thumbs/z9qyy9xqoxfjn0njxgzoy2rwk.gif", league_id: 4}
  ])
  puts "Finished NHL Teams"
  puts "Finished seeding data"

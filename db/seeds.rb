# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

n1 = Nation.create(
  name: "Greatland",
  password_digest: "a",
  session_token: "a",
  ec_freedom: 20,
  soc_freedom: 30,
  pol_freedom: 40,
  currency: "Greatguilder",
  animal: "lobster",
  population: 1234567,
  leader_title: "Leader the Great",
  motto: "Our lobsters are great!",
  tax_rate: 70,
  ecosystem: 60
  )
n2 = Nation.create(
  name: "Empire of Antarctica",
  password_digest: "a",
  session_token: "a",
  ec_freedom: 50,
  soc_freedom: 55,
  pol_freedom: 0,
  currency: "icicle",
  animal: "human",
  population: 3333333333,
  leader_title: "Emperor Penguin",
  motto: "All nations will be crushed under our flippers.",
  tax_rate: 40,
  ecosystem: 80
  )
n3 = Nation.create(
  name: "UltraTyranny",
  password_digest: "a",
  session_token: "a",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 0,
  currency: "Overlord Coin",
  animal: "spy",
  population: 4353487,
  leader_title: "Supreme Overlord",
  motto: "Come for the beaches, stay for the prisons.",
  tax_rate: 100,
  ecosystem: 100
  )
n4 = Nation.create(
  name: "Land of Voters",
  password_digest: "a",
  session_token: "a",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 100,
  currency: "ballot",
  animal: "voting booth",
  population: 1353487,
  leader_title: "electorate",
  motto: "Let's vote on it.",
  tax_rate: 100,
  ecosystem: 100
  )
n5 = Nation.create(
  name: "Republic",
  password_digest: "a",
  session_token: "a",
  ec_freedom: 45,
  soc_freedom: 50,
  pol_freedom: 55,
  currency: "president",
  animal: "dog",
  population: 3553487,
  leader_title: "prime minister",
  motto: "Proud of our country.",
  tax_rate: 30,
  ecosystem: 60
  )
n6 = Nation.create(
  name: "Communist Utopia",
  password_digest: "a",
  session_token: "a",
  ec_freedom: 5,
  soc_freedom: 40,
  pol_freedom: 10,
  currency: "unit of need",
  animal: "polar bear",
  population: 6653487,
  leader_title: "Great Comrade",
  motto: "Proletarians of the world, unite!",
  tax_rate: 100,
  ecosystem: 30
  )
n7 = Nation.create(
  name: "Ungoverned Territory",
  password_digest: "a",
  session_token: "a",
  ec_freedom: 95,
  soc_freedom: 99,
  pol_freedom: 97,
  currency: "potato",
  animal: "rat",
  population: 1653487,
  leader_title: "Anarch",
  motto: "We couldn't agree on a motto.",
  tax_rate: 100,
  ecosystem: 20
  )
n8 = Nation.create(
  name: "Conservatopia",
  password_digest: "a",
  session_token: "a",
  ec_freedom: 75,
  soc_freedom: 35,
  pol_freedom: 45,
  currency: "best",
  animal: "loyal dog",
  population: 3553487,
  leader_title: "president",
  motto: "Freedom and order.",
  tax_rate: 15,
  ecosystem: 30
  )
n9 = Nation.create(
  name: "Chernobyl",
  password_digest: "a",
  session_token: "a",
  ec_freedom: 100,
  soc_freedom: 100,
  pol_freedom: 100,
  currency: "radiation dose",
  animal: "Geiger Counter",
  population: 0,
  leader_title: "least irradiated rat",
  motto: "*Geiger Counter clicks*",
  tax_rate: 0,
  ecosystem: 0
  )
n10 = Nation.create(
  name: "Seastead",
  password_digest: "a",
  session_token: "a",
  ec_freedom: 100,
  soc_freedom: 85,
  pol_freedom: 0,
  currency: "Dogecoin",
  animal: "war walrus",
  population: 9876543210,
  leader_title: "CEO",
  motto: "A perfect community on top of the Pacific garbage patch.",
  tax_rate: 10,
  ecosystem: 40
  )
aliens = Issue.create(
  title: "Close Encounters Of the Sci-Fi Kind?",
  body: "A recent, well-publicized UFO sighting over rural areas of the country has turned people's attention to the skies, and what... or who... might be up there."
)
alienso1 = IssueOption.create(
  issue_id: aliens.id,
  body: "'This event proves one thing: there are other life-forms out there,' says an eccentric astronomer, 'All we have to do is find them! What is the price of a few hundred Radio Telescopes compared to the benefit of living in peace and harmony with our brethren of the stars?",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: 1,
  ecosystem: 1,
  result_txt: "the government is spending millions to search for alien visitors"
)
alienso2 = IssueOption.create(
  issue_id: aliens.id,
  body: "'Spies! It's gotta be spies! A few planes or satellites from our enemies or 'allies' in our region,' rages General Ripper, head of your military, 'The only way to keep those snoops out of our airspace is to patrol the streets 'n skies, and shoot 'em down! Even if they are some sort of little green aliens, a couple of SAM batteries and a few flak cannons'll keep 'em from abducting our cows.",
  ec_freedom: 0,
  soc_freedom: -1,
  pol_freedom: 0,
  tax_rate: 2,
  ecosystem: 0,
  result_txt: "the military is on high alert against children's balloons originating in your neighbors' territory"
)
alienso3 = IssueOption.create(
  issue_id: aliens.id,
  body: "Extraterrestrial lifeforms? Alien invaders? I don't know why we even have to listen to such idiocy!' complains a prize-winning physicist. 'In my opinion, the idea of 'aliens' on another planet is highly unlikely, and even if they did exist, getting from there to here is technically impossible! I say we forget this nonsense and stop wasting our budget on it. Leave this sort of foolishness to the people who attend those 'trekkie' conventions.",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: -2,
  ecosystem: 0,
  result_txt: "X-Files ratings are at an all-time low"
)
roads = Issue.create(
  title: "For Whom The Road Tolls",
  body: "A group of transport analysts have suggested that a small daily for vehicular access to your most congested inner-cities during peak hours is the only way to solve their ever-growing traffic problem."
)
roadso1 = IssueOption.create(
  issue_id: roads.id,
  body: "'Similar schemes have been very effective elsewhere,' says your most infamous traffic warden. 'It's common sense that the best way to curb dangerously high demand is to raise the price of the supply - or, as in this case, to create a price. Charging citizens to go into more congested areas could, combined with the improvements to public transport it will finance, actually make people choose public transport over their cars. I don't see why people shouldn't pay tax for a little less traffic on our roads.",
  ec_freedom: -1,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: 5,
  ecosystem: 10,
  result_txt: "traffic in the inner cities has fallen, despite grumbling from commuters"
)
roadso2 = IssueOption.create(
  issue_id: roads.id,
  body: "'These tolls are a preposterous idea,' argues a leading road lobbyist. 'Public transport will never replace the car - I don't want to be forced to share my space with a bunch of malodorous working-class people on my way to work. Not that I would be, because I could afford the charge, but really, it's the principle of the matter! The only solution is to expand urban road networks. True, some pavements and green spots would have to go, but those pedestrians should be able to put up with that if they're to expect our nation to be part of the modern world.'",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: -5,
  ecosystem: -10,
  result_txt: "parks and sidewalks have been bulldozed to build more roads for commuters"
)
roadso3 = IssueOption.create(
  issue_id: roads.id,
  body: "'Allowing cars to scoot around and pollute our cities was a bad idea in the first place,' says a famous environmentalist. 'The solution is to restrict private transport to main roads and motorways whilst funding a major urban public transport scheme. Our buses and undergrounds could be the envy of the world! Yes, the car companies will suffer a little, and yes, there'll be a bit more tax, but wouldn't it be worth it for a bit of fresh air and safe streets for the children?'",
  ec_freedom: -5,
  soc_freedom: -5,
  pol_freedom: 0,
  tax_rate: 5,
  ecosystem: 30,
  result_txt: "cars have been banned"
)
beaches = Issue.create(
  title: "Get Efficient, Private Sector Tells Nature",
  body: "A group of prominent businesspeople have proposed privatizing your nation's beaches."
)
beaches1 = IssueOption.create(
  issue_id: beaches.id,
  body: "'Have you been to the beach lately? It's disgusting,' says a company spokesperson. 'There's litter, there's teenagers smoking, and there are people enjoying themselves without paying for it. Let the private sector in on this, and our beaches will be the talk of the region! And a nice little earner, too.'",
  ec_freedom: 2,
  soc_freedom: -2,
  pol_freedom: 0,
  tax_rate: -1,
  ecosystem: 5,
  result_txt: "citizens must pay to enjoy the pristine beaches"
)
beaches2 = IssueOption.create(
  issue_id: beaches.id,
  body: "'Whoa, whoa, we're privatizing beaches now?' says a local environmental campaigner. 'These are public spaces! All of our citizens have a right to enjoy them, not just the well-off. Yes, we should improve the quality of our beaches, but handing them over to the money-grabbers is not the right way to do it. The right way to do it is to boost government spending by increasing taxes.'",
  ec_freedom: -2,
  soc_freedom: 2,
  pol_freedom: 0,
  tax_rate: 2,
  ecosystem: 4,
  result_txt: "a government program is underway to revitalize the beaches"
)
big_brother = Issue.create(
  title: "Big Brother Is Watching You Surf"
  body: "Advisers from your security services have created a small piece of spyware that they would like to install on every computer in the nation so they can track activity."
)
big_brother1 = IssueOption.create(
  issue_id: big_brother.id,
  body: "'For the good of all,' claims Department of Protection head J. Edgar Hoover. 'This tiny little program will simply collect data and send it via the internet to one of our databases. Nobody will even notice that it's there. Besides, who's gonna notice a handful of bytes under mountains of stolen MP3s? Just give us the green light and we'll be rounding up terrorists faster than you can say 'lolcat'! And, hey, while we're at it, we could even use it to alert people when there's danger!'",
  ec_freedom: 0,
  soc_freedom: -20,
  pol_freedom: -2,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "the government has extensive records of all telecommunications"
)
big_brother2 = IssueOption.create(
  issue_id: big_brother.id,
  body: "'Are you insane?' shouts a privacy advocate. 'We pay for our computers; they're not the government's property! The last thing we need is the government poking its big, fat nose into our business. Keep the government's hands off my harddrive! What's next? Brain implants? Leave my brainwaves alone, you jack-booted thugs!'",
  ec_freedom: 2,
  soc_freedom: 20,
  pol_freedom: 2,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "the government's plans to install brain implants into its citizens have been shelved, for now"
)
big_brother3 = IssueOption.create(
  issue_id: big_brother.id,
  body: "'While 'tis not my place,' says an Amish farmer, 'I just thought I'd mention that we Amish don't have any of this so-called 'cyber-crime'. Aye, 'tis a boring life, and plowin' gets old, but abolishing all of those computer-machines would certainly solve thy problems. Perhaps ye should just abandon phones and fax machines, too.",
  ec_freedom: -30,
  soc_freedom: -10,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 20,
  result_txt: "electronics have been banned as citizens have been told to go back to the farm"
)
presses = Issue.create(
  title: "Stop The Presses?",
  body: "It has been revealed that many newspapers are deep in the red. Opinions are divided on whether or not the government should intervene."
)
presses1 = IssueOption.create(
  issue_id: presses.id,
  body: "'There is no real problem here,' says noted a economist. 'If newspapers are no longer selling, they shouldn’t exist in a free market economy; let capitalism take its course. Who cares if a few newspapers go under? Besides, it’s probably good for the digital industry, right?'",
  ec_freedom: 7,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: -3,
  ecosystem: 0,
  result_txt: "morning coffees are no longer the same since the disappearance of newspapers"
)
presses2 = IssueOption.create(
  issue_id: presses.id,
  body: "'You can’t just allow the newspaper industry to die!' panics a newspaper editor. 'We are the core of our nation’s news media! Where will the talk shows, internet news sites, and other media outlets get their stories from? We're their sources after all! We need newspapers to inform the populace! Just allow us to be exempt from taxation and I’m sure we will recover. After all, quality news is worth the price!'",
  ec_freedom: -2,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: 3,
  ecosystem: 0,
  result_txt: "the newspaper industry is subsidised by the government in order to keep it afloat"
)
presses3 = IssueOption.create(
  issue_id: presses.id,
  body: "'Why bother subsidising when we can go all-out and take control of the media!' muses one of your innumerable advisors. 'Newspapers are full of sensationalised, makey-uppy events designed to sell more papers and they ignore what really matters - like what we the Government are doing for the people! As a bonus, there'd be no need for newspapers and stations to compete with each other, and job losses would be at a minimum, so everyone'll be happy.'",
  ec_freedom: -5,
  soc_freedom: -10,
  pol_freedom: -20,
  tax_rate: 5,
  ecosystem: 0,
  result_txt: "daily newspapers are permitted to run only pro-government stories"
)
presses4 = IssueOption.create(
  issue_id: presses.id,
  body: "'Yu’r not attacking the problem,' states elderly gentleman Woody Cane. 'Newspapers will never be able t’ compete with them internets. All you’ve got t’do is shut them newfangled things down. Problem solved!'",
  ec_freedom: -20,
  soc_freedom: -20,
  pol_freedom: -10,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "abacus sales outpace those of the personal computer following the closure of the Internet"
)
video_games = Issue.create(
  title: "Video Games Too Violent, Say Parents",
  body: "Recently, there has been an enormous commercial success for 'violent' video games such as 'Blood 'n' Guts 2: The Revenge', 'Tremor', and 'Grand Theft Tricycle'. Several parents' groups have been calling for tougher restrictions on these games."
)
video_games1 = IssueOption.create(
  issue_id: video_games.id,
  body: "'We must outlaw these violent games immediately!' shouts Catherine Gratwick, a member of Mothers Against Nastiness, 'These so-called 'games' are desensitising our children to violence and making them more aggressive. Why, just the other day I witnessed my son firing a missile launcher in a videogame and the next day he went out and robbed a bank! He may be thirty-five, but you can't possibly say it's a coincidence!'",
  ec_freedom: -10,
  soc_freedom: -10,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "Tetris has been banned for its graphic violent content"
)
video_games2 = IssueOption.create(
  issue_id: video_games.id,
  body: "Oh noez!' cries xXxDEATMASTERxXx one of the foremost authorities on video games. 'That's stupid! If a child is psychotic, it's not because they played 'Hellstorm of Fireblood 3' or whatever, it's because their parents were stupid enough to not teach little Johnny the difference between right and wrong and don't want to take the blame. Just because I like to n00k countries in games doesn't mean I like to shoot people in real life. That's false data! So just relax and let the kids play their games, hey?'",
  ec_freedom: 10,
  soc_freedom: 10,
  pol_freedom: 0,
  tax_rate: -2,
  ecosystem: 0,
  result_txt: "local children are often remarked upon for their cheery attitude to extreme violence"
)
video_games3 = IssueOption.create(
  issue_id: video_games.id,
  body: "'Why not rate games the same way we rate movies?' asks a spokesperson for the National Censorship Board. 'We could give each game a content rating based on age appropriateness, and add descriptors on the box explaining why the game gets a certain rating. A little funding and we can stop children getting violent video games without affecting all the older 'gamers'. Everyone will be happy. Except taxpayers, I guess.'",
  ec_freedom: -5,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: 5,
  ecosystem: 0,
  result_txt: "only adults may purchase violent video games"
)
video_games4 = IssueOption.create(
  issue_id: video_games.id,
  body: "'The children will manage to get their hands on the games anyway,' says a fitness instructor. 'Parents can be so ignorant. In my opinion, the only damage these video games are causing is physical: kids are becoming less inclined to exercise, and it doesn't really matter if they are violent; the result is the same either way. The only way to get bums off seats is to ban all video games. Maybe then we'll see a difference in the national waistline!'",
  ec_freedom: -15,
  soc_freedom: -20,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "students everywhere have been despairing after the recent ban on video games"
)
name = Issue.create(
  title: "What's In A Name?",
  body: "A man by the name of &%*@# Smith hit the headlines yesterday when he had his first name legally changed to 'John', citing the ridicule and stress he suffered because of his given name. Mr Smith publicly commented afterwards that there should be more restrictions on what parents can name their children."
)
name

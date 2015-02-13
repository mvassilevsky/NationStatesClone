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
aliens1 = IssueOption.create(
  issue_id: aliens.id,
  body: "'This event proves one thing: there are other life-forms out there,' says an eccentric astronomer, 'All we have to do is find them! What is the price of a few hundred Radio Telescopes compared to the benefit of living in peace and harmony with our brethren of the stars?",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: 1,
  ecosystem: 1,
  result_txt: "the government is spending millions to search for alien visitors"
)
aliens2 = IssueOption.create(
  issue_id: aliens.id,
  body: "'Spies! It's gotta be spies! A few planes or satellites from our enemies or 'allies' in our region,' rages General Ripper, head of your military, 'The only way to keep those snoops out of our airspace is to patrol the streets 'n skies, and shoot 'em down! Even if they are some sort of little green aliens, a couple of SAM batteries and a few flak cannons'll keep 'em from abducting our cows.",
  ec_freedom: 0,
  soc_freedom: -1,
  pol_freedom: 0,
  tax_rate: 2,
  ecosystem: 0,
  result_txt: "the military is on high alert against children's balloons originating in its neighbors' territory"
)
aliens3 = IssueOption.create(
  issue_id: aliens.id,
  body: "'Extraterrestrial lifeforms? Alien invaders? I don't know why we even have to listen to such idiocy!' complains a prize-winning physicist. 'In my opinion, the idea of 'aliens' on another planet is highly unlikely, and even if they did exist, getting from there to here is technically impossible! I say we forget this nonsense and stop wasting our budget on it. Leave this sort of foolishness to the people who attend those 'trekkie' conventions.",
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
roads1 = IssueOption.create(
  issue_id: roads.id,
  body: "'Similar schemes have been very effective elsewhere,' says your most infamous traffic warden. 'It's common sense that the best way to curb dangerously high demand is to raise the price of the supply - or, as in this case, to create a price. Charging citizens to go into more congested areas could, combined with the improvements to public transport it will finance, actually make people choose public transport over their cars. I don't see why people shouldn't pay tax for a little less traffic on our roads.",
  ec_freedom: -1,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: 5,
  ecosystem: 10,
  result_txt: "traffic in the inner cities has fallen, despite grumbling from commuters"
)
roads2 = IssueOption.create(
  issue_id: roads.id,
  body: "'These tolls are a preposterous idea,' argues a leading road lobbyist. 'Public transport will never replace the car - I don't want to be forced to share my space with a bunch of malodorous working-class people on my way to work. Not that I would be, because I could afford the charge, but really, it's the principle of the matter! The only solution is to expand urban road networks. True, some pavements and green spots would have to go, but those pedestrians should be able to put up with that if they're to expect our nation to be part of the modern world.'",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: -5,
  ecosystem: -10,
  result_txt: "parks and sidewalks have been bulldozed to build more roads for commuters"
)
roads3 = IssueOption.create(
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
  title: "Big Brother Is Watching You Surf",
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
  body: "'Why bother subsidizing when we can go all-out and take control of the media!' muses one of your innumerable advisors. 'Newspapers are full of sensationalised, makey-uppy events designed to sell more papers and they ignore what really matters - like what we the Government are doing for the people! As a bonus, there'd be no need for newspapers and stations to compete with each other, and job losses would be at a minimum, so everyone'll be happy.'",
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
  body: "'O noez!' cries xXxDEATHMASTERxXx, one of the foremost authorities on video games. 'That's stupid! If a child is psychotic, it's not because they played 'Hellstorm of Fireblood 3' or whatever, it's because their parents were stupid enough to not teach little Johnny the difference between right and wrong and don't want to take the blame. Just because I like to n00k countries in games doesn't mean I like to shoot people in real life. That's false data! So just relax and let the kids play their games, hey?'",
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
name1 = IssueOption.create(
  issue_id: name.id,
  body: "'People do so love to be different,' says Insert Name Here, with a heavy sigh. 'I don't know what my folks were thinking when they named me. Probably about how 'novel' and 'with it' they were being, but I didn't get a say in it, did I? Growing up in my neighborhood with the first name 'Insert' wasn't fun at all, I can tell you! The government should set up a registry of recognised names that are clean, sensible, and non-teasable. Kids deserve better.'",
  ec_freedom: 0,
  soc_freedom: -5,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "parents must choose their children's names from a government-mandated master list"
)
name2 = IssueOption.create(
  issue_id: name.id,
  body: "'It's none of the government's business what I name my daughter,' says Follicle Rainbow Gooseknob, cradling [expletive deleted] in her arms. 'Are you going to tell us what to think next? Where to go? Who to love? I don't want some grey-faced bureaucrat deciding what name is appropriate for my child! What kind of country hates personal freedom so much you can't even choose your own name?'",
  ec_freedom: 0,
  soc_freedom: 5,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "the nation is known throughout the world for its citizens' strange names"
)
name3 = IssueOption.create(
  issue_id: name.id,
  body: "'Names? Names are so inefficient!' Says Five-Oh-Three McGoohan, counting beads. 'Who can honestly tell one Belisarius McStalin from another? That name's so popular now, I met three people at the mall with it just last week! Face it! Names are old-hat! Everyone ought to go by a government-allocated ID number instead, much more practical. Who could make fun of a child named Six-Eight-Four?'",
  ec_freedom: 0,
  soc_freedom: -10,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "all citizens are solely referenced by their allocated identity number"
)
taxes = Issue.create(
  title: "Taxpayers On Strike",
  body: "The latest budget reports have marked a steady decline in the government's monthly revenues. A study initiated by your treasurers has revealed that many of your nation's citizens are not paying their taxes."
)
taxes1 = IssueOption.create(
  issue_id: taxes.id,
  body: "'Damn right we're not!' exclaims one of many citizens protesting in front of your office. 'Your oppressively high taxes are picking our pockets and robbing us of our livelihood. No more, we say! The government may call us tax cheats, but that's just because it's afraid to call us the PATRIOTS that we are! Cut the tax rate, and we'll think about paying again.'",
  ec_freedom: 10,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: -20,
  ecosystem: 0,
  result_txt: "the government has cut taxes in the face of widespread tax evasion"
)
taxes2 = IssueOption.create(
  issue_id: taxes.id,
  body: "'The government can't survive when people don't pay their taxes!' retorts the head of your Revenue Bureau. 'Citizens may feel that they need to keep all of their money, but the government needs it too! Without taxation, how can we build roads, schools and hospitals? How can we protect the people from themselves? We need to give the police broad powers to lay down the law on these tax-evading scum until they pay up.'",
  ec_freedom: -5,
  soc_freedom: -3,
  pol_freedom: 0,
  tax_rate: 5,
  ecosystem: 0,
  result_txt: "the police crack down on tax evaders without mercy"
)
taxes3 = IssueOption.create(
  issue_id: taxes.id,
  body: "'Scum is such a harsh word. Everyone has something worthwhile to contribute, as my mother always said.' says controversial social theorist and fountain of homespun folk wisdom. 'Even if they won't pay their taxes, folks ought to have other ways to pay back into society. They could spend some time with the civil service or military reserve, for example. And goodness knows, blood and organ donation rates aren't as high as they could be. A pint of blood or a good kidney ought to pay a tax bill right proper.'",
  ec_freedom: -2,
  soc_freedom: -10,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "tax evaders are regularly visited by agents of the Blood Tithe"
)
speech = Issue.create(
  title: "Sticks And Stones",
  body: "Nicholas Condor, a prominent foreign activist and soapbox orator, caused quite a stir last week when he publicly called for the complete extermination of the people of your nation, accusing your fellow citizens of being 'sub-human', 'immoral', and 'really ugly too'. Citizens Against Intolerance, a pressure group aiming to reduce social inequality, has demanded that the government put more resources into combating hate speech. Coincidentally, another society, also called Citizens Against Intolerance, has stood up for Mr. Condor, claiming that inhibiting his speeches would be a violation of his right to free speech."
)
speech1 = IssueOption.create(
  issue_id: speech.id,
  body: "'I can't believe we're even debating this,' says an unnerved citizen who was present at the infamous speech. 'Doesn't it worry you that a man who would obviously be happier if we all died horrible, painful deaths, is allowed to walk around in public? Let him continue and he'll cause a riot! Free speech is supposed to protect people! But talking about genocide and killing, well... that doesn't help anyone. It breaks society. It drives us apart. Hate speech is a very serious crime. You can't just ignore it.'",
  ec_freedom: 0,
  soc_freedom: -15,
  pol_freedom: -5,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "a fashion designer has been arrested for inciting hatred after claiming redheads couldn't pull off vermillion"
)
speech2 = IssueOption.create(
  issue_id: speech.id,
  body: "'Words by themselves can't hurt anyone,' counters a member of Citizens Against Intolerance. 'We don't need to be 'protected' from hearing different opinions for goodness sake! Oh, what a boring place the world would be if we all had the same thoughts! You can't punish people for disagreeing with you! That's crazy! I hate my mother-in-law, but if I told her so and she then tried to stab me with a kitchen knife then the problem is obviously hers - not mine.'",
  ec_freedom: 0,
  soc_freedom: 20,
  pol_freedom: 3,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "violently opinionated speakers can be heard preaching their hateful views on every street corner"
)
speech3 = IssueOption.create(
  issue_id: speech.id,
  body: "'I agree to an extent,' ventures your Minister of Domestic Security. 'But insulting one person is not the same as insulting an entire social grouping. The wrong word in the wrong place and you WILL have violence on the streets: that's the reality we live in, whether you like it or not. If we want to make any real difference then we need to nudge cultural values in the right direction with government awareness programs and the like. Educate the masses! Laying down a reactionary law will just fuel resentment in the long run.'",
  ec_freedom: 0,
  soc_freedom: 10,
  pol_freedom: 5,
  tax_rate: 5,
  ecosystem: 0,
  result_txt: "the government is promoting multicultural values with the new 'Just Be Nice, OK?' initiative"
)
none_of_the_above = Issue.create(
  title: "Vote For 'None of the Above'?",
  body: "A loose coalition of political activists running the gamut of the political spectrum has started a petition to add 'None of the Above' as an option on every ballot, so that a voter can reject all candidates if he feels none of them represent a viable option. If 'None of the Above' wins the election, a new election with all-new candidates would have to be held."
)
none_of_the_above1 = IssueOption.create(
  issue_id: none_of_the_above.id,
  body: "'It's a simple matter, really,' says a left-wing activist. 'Sometimes when you're voting, all the options suck. Why then should people be forced to hold their nose and vote for the lesser of two, or even three or four evils? Adding 'None of the Above' to the ballot would ensure that the people have a choice at all times, even if that choice is to reject the choices they have been given!'",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: 15,
  tax_rate: 1,
  ecosystem: 0,
  result_txt: "elections have become procedural nightmares due to voters persistently rejecting candidates"
)
none_of_the_above2 = IssueOption.create(
  issue_id: none_of_the_above.id,
  body: "'Adding 'None of the Above' to the ballot makes absolutely no sense,' contributes a conservative political pundit. 'Those who want to run for office have already put their names on the ballot, and if none of those options suits the voter, that's just too bad. Instead, we ought to prevent this sort of problem and limit the number of options. Sure, fewer people can run, but that will eliminate costly runoff elections completely!'",
  ec_freedom: 0,
  soc_freedom: 0,
  pol_freedom: -10,
  tax_rate: -1,
  ecosystem: 0,
  result_txt: "voters must frequently select what they view as the lesser of two evils on the ballot"
)
duel = Issue.create(
  title: "Raise Duel Standards, Say Fencers",
  body: "A number of well-dressed gentlemen wearing a varied assortment of swords is insisting that they be allowed to settle their private disputes on the field of honorable battle."
)
duel1 = IssueOption.create(
  issue_id: duel.id,
  body: "'We must be permitted our inherent right to defend our honor through feats of arms!' exclaims a bewigged aristocrat sporting a particularly flamboyant swept-hilt rapier. 'The right to duel is one found throughout history for the honorable settling of disputes and I must insist that my right to fight be recognized! The world would be so much better - and cheaper too - if conflicts of interest were sorted through trial by combat instead of trial by jury.'",
  ec_freedom: 0,
  soc_freedom: 10,
  pol_freedom: 5,
  tax_rate: -4,
  ecosystem: 0,
  result_txt: "murderers frequently escape punishment by claiming they were protecting their honor"
)
duel2 = IssueOption.create(
  issue_id: duel.id,
  body: "'Swords? Heavens, what dreadful things. All sharp and pointy - quite dangerous, you know,' says an ardent pacifist. 'Duelling ought to be banned! The best way to settle these kind of arguments are through trials, we all know that. If we go ahead with what these duelling nutters want then innocent people will die! It will be a sad day when people value money more than justice. Apart from lawyers, obviously.'",
  ec_freedom: 0,
  soc_freedom: -5,
  pol_freedom: 0,
  tax_rate: 4,
  ecosystem: 0,
  result_txt: "long arduous trials are held for the most trivial of offenses"
)
greenbelt = Issue.create(
  title: "Keep The Greenbelt Green, Say Protesters",
  body: "A group of environmentalists are protesting against plans to expand urban and suburban developments into greenbelts, the designated countryside between settlements."
)
greenbelt1 = IssueOption.create(
  issue_id: greenbelt.id,
  body: "'Do we really have to listen to these nutcases?' asks a real estate developer. 'The fact of the matter is that nature is BORING. Give us permission to build on the greenbelt and you'll have pink hotels, boutiques, and swinging hot spots that'll be the envy of the region and draw tourists from all around! We can always transplant a few trees and put them in a tree museum to keep the tree-huggers happy. Our nation stands to make a lot of money from this! Think about it for a moment!'",
  ec_freedom: 1,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: -1,
  ecosystem: -5,
  result_txt: "private business has started paving paradises and putting up parking lots"
)
greenbelt2 = IssueOption.create(
  issue_id: greenbelt.id,
  body: "'I agree with my colleague here, but he doesn't go far enough,' says a city planner. 'These protesters are standing in the path of progress. It slows the growth of our economy and harms my portfolio - er - the future of our nation, I mean. It's unpatriotic and we should increase police funding to deal with these troublemakers. Then we wouldn't have to worry about greenbelts or any other nonsense about keeping the 'environment' safe. Think about it for a moment!'",
  ec_freedom: 0,
  soc_freedom: -10,
  pol_freedom: -10,
  tax_rate: -1,
  ecosystem: -10,
  result_txt: "environmental protesters are regularly jailed"
)
greenbelt3 = IssueOption.create(
  issue_id: greenbelt.id,
  body: "'I can't believe what I'm hearing!' exclaims an environmental activist. 'Tree museums? Police funding? Doesn't it always seem to be the case that you don't know what you've got 'till it's gone? We're talking about natural treasures and you're talking about destroying them. Is there anything that you can build that can really be better than nature? We should put a stop to all encroachment into natural areas. Think about it for a moment!'",
  ec_freedom: -5,
  soc_freedom: 0,
  pol_freedom: 0,
  tax_rate: 0,
  ecosystem: 20,
  result_txt: "there's a shortage of swinging hot spots as land development grinds to a halt"
)
mes = Issue.create(
  title: "Man, Economy, or the State?",
  body: "The surprising recent popularity of political philosophy has led to rival political protests on your national holiday."
)
mes1 = IssueOption.create(
  issue_id: mes.id,
  body: "'The lack of support for poor and marginalized people in our nation is appalling!' yells a young protester belonging to the Acquire Exclusive Use of the Business District movement. 'Inequality has reached absurd levels, and only the rich and privileged are free! It's time for a change! We need to crack down on oppressive corporations. It'd be good for the environment, too.'",
  ec_freedom: -20,
  soc_freedom: 10,
  pol_freedom: 10,
  tax_rate: 10,
  ecosystem: 20,
  result_txt: "former activists now occupy positions of power in the government and are enacting their agenda"
)
mes2 = IssueOption.create(
  issue_id: mes.id,
  body: "'That's unpatriotic nonsense', says an elderly leader of the Beverage Party. 'What we need is a return to the moral values that made our nation great - like making money and living like a decent person.'",
  ec_freedom: 10,
  soc_freedom: -10,
  pol_freedom: 0,
  tax_rate: -10,
  ecosystem: 0,
  result_txt: "conservative groups have the government's ear"
)
mes3 = IssueOption.create(
  issue_id: mes.id,
  body: "'Socialism and conservativsm are two sides of the same oppressive coin', says the president of the Institute for Austrian Economics. 'The government should just get out of the way and let people live their lives as they choose. Maybe not everyone can handle it, but isn't liberty a moral requirement?'",
  ec_freedom: 30,
  soc_freedom: 30,
  pol_freedom: 0,
  tax_rate: -30,
  ecosystem: 0,
  result_txt: "the government takes a hands-off approach to society"
)
mes4 = IssueOption.create(
  issue_id: mes.id,
  body: "'I have a better idea', says your cousin. 'Why do we need to do what anybody else tells us? Our government is already in your capable hands. Maybe you should crack down on these advisors and protesters and show them who's really in charge. Who needs markets, equality, or traditional values when we have you?",
  ec_freedom: -30,
  soc_freedom: -30,
  pol_freedom: -30,
  tax_rate: 0,
  ecosystem: 0,
  result_txt: "the government is centralizing power and cracking down on dissidents"
)
n1_aliens2_ni = NationIssue.create(
  nation_id: n1.id,
  issue_id: aliens.id,
  resolved: true,
  chosen_option_id: aliens2.id
)
n1_roads1_ni = NationIssue.create(
  nation_id: n1.id,
  issue_id: roads.id,
  resolved: true,
  chosen_option_id: roads1.id
)
n1_roads1_stat = NationStat.create(
  nation_id: n1.id,
  ec_freedom: 21,
  soc_freedom: 31,
  pol_freedom: 40
)
n1_aliens2_stat = NationStat.create(
  nation_id: n1.id,
  ec_freedom: 20,
  soc_freedom: 31,
  pol_freedom: 40
)
n1_curr_stat = NationStat.create(
  nation_id: n1.id,
  ec_freedom: 20,
  soc_freedom: 30,
  pol_freedom: 40
)
n2_aliens2_ni = NationIssue.create(
  nation_id: n2.id,
  issue_id: aliens.id,
  resolved: true,
  chosen_option_id: aliens2.id
)
n2_greenbelt2_stat = NationStat.create(
  nation_id: n2.id,
  ec_freedom: 60,
  soc_freedom: 66,
  pol_freedom: 0
)
n2_aliens2_stat = NationStat.create(
  nation_id: n2.id,
  ec_freedom: 50,
  soc_freedom: 56,
  pol_freedom: 0
)
n2_greenbelt2_ni = NationIssue.create(
  nation_id: n2.id,
  issue_id: greenbelt.id,
  resolved: true,
  chosen_option_id: greenbelt2.id
)
n2_curr_stat = NationStat.create(
  nation_id: n2.id,
  ec_freedom: 50,
  soc_freedom: 55,
  pol_freedom: 0
)
n5_curr_stat = NationStat.create(
  nation_id: n5.id,
  ec_freedom: 45,
  soc_freedom: 50,
  pol_freedom: 40
)
n5_none_of_the_above1_ni = NationIssue.create(
  nation_id: n5.id,
  issue_id: none_of_the_above.id,
  resolved: true,
  chosen_option_id: none_of_the_above1.id
)
n5_none_of_the_above1_stat = NationStat.create(
  nation_id: n5.id,
  ec_freedom: 45,
  soc_freedom: 50,
  pol_freedom: 55
)

Captain's Log

///////////////////////////////////////////Classes///////////////////////////////////////////////

Ship: 

Different types, each of which extends Ship.

Enemy: 

Different types, each of which extends Enemy.

Level: 

Different types, each of which extends Level.

Projectile: 

Different types, each of which extends Projectile.

//////////////////////////////////////////Mechanics////////////////////////////////////////////// 

Power bar which determines amount of available power to route to various parts of the ship.
Health bar which determines overall integrity of the ship.
individual components of the ship have independent health bars which feed into the primary health bar.
Shields for the front, rear, sides, corners or totality of the ship.
Thrusters for the front, rear, sides or corners of the ship.
Engines which determines movement speed.
Weapon (referred to as "guns").
Special weapon (referred to as "cannon").
Cut, which cuts power to specific ship components or any combination thereof.
Inputting commands (all text-based):
	Initial display: thrusters | engines | shields | guns | cannon | cut 
	"thrusters" --> bow (front) | stern (rear) | port (left) | starboard (right) | bow left (front left) | 
	bow right (front right) | stern left (rear left) | stern right (rear right) --> "starboard" --> distance
	| continuous --> "distance" --> 0-1000 --> "470" --> (ship moves 470 units to the left)

/////////////////////////////////////////Levels//////////////////////////////////////////////////

All levels are introduced with their titles, and these titles are taken from the precursor text. The rest of the text disappears as the level title remains.

/////////////////////////////////////////Characters//////////////////////////////////////////////

Klem:
--Species: Native
--Ship: HAL.1T0515
--Backstory: There are perhaps a number of more important figures in the war, but none so easily recognizable or readily associated with it as Klem. As grizzled a vet as any among the 
Hintaacians may proclaim themselves to be, he was mere weeks from retirement when he caught wind of the Niagara Relocation Rebellion, and were it not for the brevity of the "battle", he 
would have been there. He postponed his retirement, recruited a specialized crew (who were only too happy to stand alongside him, as his accomplishments and decorations were many), and 
would have immediately set about preparing his peoples' retaliation had he not begun doing so decades prior. It was, in fact, in the midst of his formative years that Klem became 
uncomfortably aware of the tensions his peers and elders would dismiss as trivial or non-existent. By late adolescence, he saw the futility in his communication of such facts as he 
observed, and attributed this to his menial station as a factory worker (either because his opinions were thus undervalued or his contemporaries unreceptive to them). Lamenting his lot, 
he put forth great efforts to enter into Hintaak's most prestigious University--Oxford (a startlingly accurate recreation of the terrestrial institution of the same name). It was here 
that he studied under, of all possibilities, Aarakis' adoptive father, Stuart. The two had a productive, if not untumultuous relationship, their respective personalities and ideologies so 
strong that each individual's argumentative victory served as a spur to the other's hindside. As we win, we lose. The two would carry on a lifelong dialogue as friends even after Klem's 
graduation; even after his failed attempts at authorship; even after he donned military garb, a gun in his hands, and his tail between his legs. "No matter", thought Klem, "this world is 
not a thinker's world, though the occasional thinker may inhabit it. If we two are to be a people, I shall offer my body sans mind to that cause, lest ours be forgotten in both action and 
word. This too is honorable." And thus Klem would lie to himself until the day Niagara fell. The day which he, admittedly in poor taste, always dreamed would come.   
--Loyalty: Native

Frederickson:
--Species: Human
--Ship: Ricecake
--Backstory: Frederickson is not a smart man, nor were his parents possessed of the ability to ensure that he turned out otherwise. They were not bad people, of course, but incapable of 
being so, as they were devoid of the requisite level of agency for such a designation--that afforded the educated and cognitively proficient. They followed all the rules, toed all the 
lines, and lived as comfortably and amiably as just about anyone else in the Humans' lower class. They did not question those laws to which they adhered, and they instinctively resented 
anyone who did. "Laws" were to them justice manifest, God's will writ in stone and gifted to God's people, few though they were. Thus the boy, thus the man. When the war unofficially 
began (it would be deemed a "Peoples' Disparity" by the reigning government for some time), Frederickson was constitutionally and very nearly familially obligated to join his people's 
movement; that was just "what you did" in such circumstances. Though the boy possessed no special talents, he had what his superiors would refer to as "heaps of heart", and was thus given 
somewhat preferential treatment when the war efforts reached a head, and the Humans' number of qualified pilots was found wanting. Frederickson was named captain of the derisively 
nicknamed "Ricecake", and it was expected that he would have little to no lasting impact on the conflict. The higher-ups could not have known the role he was to play with their blessing, 
but is ignorance ever a complete justification for one's actions?
--Loyalty: Human

Tsing:
--Species: Human
--Ship: Mezzanine
--Backstory: The product of a rather traditional (that is to say, governmentally effected) upbringing, it was expected that Tsing would become an official of at least modest importance 
within the Human government. Early into her adulthood, however, it became apparent that she possessed a seemingly innate distaste for people (not just people, actually, but most sentient 
beings). This fact coupled with her inability to "fake it" practically barring her from the realm of diplomacy, she pursued the only other avenue favored by her family--military service...
And she performed admirably until the Niagara Relocation Rebellion, during which her natural propensity towards disassociation failed her, and she began to question the morality of her 
actions (She'd always disliked most, certainly, but did that orientation afford her the right to exercise such great power upon them? And to such a relatively negative effect?). She would 
find Klem shortly after the rebellion, and put her violent demeanor to what she deemed justifiable use.
--Loyalty: Native

Miller:
--Species: Native
--Ship: Sidecar
--Backstory: Miller is the daughter of a well-to-do native family that has brought her up under the conventions, teachings and assumed name of their planet's captors. Her father being a 
high diplomat within the human government (a position made possible and encouraged by the Humans' "Solidarity Ordinance"), she was understandably comfortable with her station for many 
years, even enlisting as an officer in the Humans' Expansion and Life Preservation Authority, eventually working her way up to Captain of the UPHS (United Peoples of Hintaak Ship) Bush, 
known coloquially as the Sidecar. She worked earnestly in this position until the Niagara Relocation Rebellion, during which she saw firsthand the priorities of her benefactors.
--Loyalty: Native

Howitt:
--Species: Human
--Ship: Pincer
--Backstory: Howitt is a savant of sorts; throughout his childhood and adolescence, he performed passably in his studies, but was possessed of a blatant distaste for academia and 
authority. This likely stemmed largely (though not completely) from his home life, which admitted of little parental supervision, save for the occassional beating. Upon barely graduating 
from secondary education, he entered into a non-violent, non-noticeable existence; he would perform sexual services for those in need (prostitution having always been legal for the 
Hintaacians, but only recently decriminalized by the Humans), ultimately scraping by just enough to both live and finance his hobby of participating in a small handful of video 
environments, excelling particularly in flight simulations. Come the Humans' official declaration of retaliation, he was expectedly drafted into their military (expectedly, because he had 
neither any higher education nor publicly advertised talents). During training, however, he showed such an aptitude for flight that he was quickly named the helmsman of his own ship. In 
time, his excitement over the proposition would give way to idealogical differences that would come to reinforce the anti-authoritarianism which characterized his youth.
--Loyalty: Human (Conflicted)

Aarakis:
--Species: Native
--Ship: Flasher
--Backstory: The adoptive child of a Human widower, Aarakis fired "the shot heard 'round the galaxy". He did not do so out of malice or mistake, however, but for the sake of utility. His 
father, an amateur philosopher and prominent politician in the Human government, instilled in him at a young age the notion that difference breeds discord. "Only through cultural 
subsumption may peace escape the realm of childish fantasy, and be put into practice." Thus opened Aarakis' father's doctoral thesis which, though polarazing, may be said by noone to be 
devoid of psychological merit. Aarakis, headstrong as he is, would likely never have "bought into" his father's teachings had the latter not been such a generous, genuine and loving 
benefactor; had his father not been decent. Aarakis had not gone into the Niagara Project with the express intention of causing harm, but saw in the locals' animosity an opportunity to 
realize his father's teachings. This was an opportunity at which Aarakis jumped, and which his father would soon come to lament (the latter would never have advocated the actual 
subsumption of one culture by another, but merely remarked on the effect such a subsumption would have). In spite of this, however, Aarakis' father's position and pride necessitated his 
eventual and diplomatic embrace of the resulting situation. Aarakis would thereon move wherever the conflict would take him, fueled by a desire to repay the kindness offered him.
--Loyalty: Human

//////////////////////////////Character Narrative Progression/////////////////////////////////////

Miller -> Howitt || Frederickson || Tsing -> Klem -> Aarakis -> Frederickson || Klem || Aarakis

1.3372                                               1.3372
                                    1.3372
          1.3373                             1.3373
2.3373    2.3373                    2.3373
          3.3374    1.3374
3.3374                                       2.3374
                    2.3375          3.3375           2.3375
                                                                3.3375          3.3375  3.3375

////////////////////////////////Character Mission Synopses////////////////////////////////////////

Miller:
--1. Miller deals with the repercussions of Aarakis' actions, deserting her squad in the middle of combat. Of course, they don't take kindly to this behavior, and attack her as she flees.
--2. After having spent some time in solitude, evading her pursuers through inactivity, Miller decides once again to take up arms...Only this time, she does so in defense of the natives.
in the final large-scale battle of 3373, she largely succeeds in combatting the enemy forces until Howitt nearly downs her ship. She is saved only by Tsing's last-minute intervention, the
latter apparently sacrificing herself for the former (though ultimately on a power trim).
--3. Miller here participates in Klem's desperate display of violence, killing enemies and innocents with reckless abandon. She is afterwards disillusioned, retreating to the shadows,
never to be heard from again.

Howitt:
--1. Howitt, originally excited about his new venture, is left disquieted after his first battle (that over the woefully finite body of physically stored human knowledge). Towards the end
of this mission, Klem (who orchestrated the natives' part in it) broadcasts a message to the human military, pleading with them to still their rape of Hintaacian culture. This message 
resonates with Howitt, though he does not find himself in a position to heed it.
--2. In the final large-scale battle of 3373, Howitt vents his newfound frustration (the product of his and his employers' conflicting ideologies) upon the "enemy", nearly killing Miller
and her crew, but instead downing Tsing's ship. Howitt slips deeper into instability.
--3. Having continued to be deemed "adequate" in all of his many psyche evaluations, Howitt is cleared for yet another tour of duty, resulting in his untimely demise at the hands of 
Frederickson (after the former loses it, and begins attacking his own squadron).

Frederickson:
--1. Frederickson is sent as one among few to quell a small rebellion when his squadmate, Howitt, unexpectedly begins to attack his brethren. Though the Human collective begins to scatter,
Frederickson remains unfettered, and terminates his troubled teammate.
--2. In this particular battle, Frederickson--the only remaining captain/crew besides Aarakis--is tasked by Aarakis himself with staying Tsing's backup. Frederickson succeeds in this task 
as Aarakis kills Tsing with cold calculation.
--3. As both sides of the war once again converge at "Niagara"...Frederickson happens upon Klem annihilating Aarakis' ship, and kills the Hintaacian figurehead.

Tsing:
--1. Having just found Klem, Tsing is subsequently taken under his wing, and put to the test against drone-like facsimiles of the enemy.
--2. In the final large-scale battle of 3373, Tsing progressively wittles down the enemy forces until she encounters a comrade--Miller--under fire by Howitt and his crew. She promptly
jumps to Miller's aid, though ultimately loses the fight. She is later recovered by one of Klem's scouts, after which the Hintaacian slowly but surely nurses her back to health.
--3. Tsing, newly returned to both her feet and her command, is tasked with her most daunting feat yet: the repellance of Aarakis' newly allocated and unprecedentedly large forces. She
performs admirably up until the point Aarakis ultimately downs her ship for the final time.

Klem:
--1. Klem here instigates the Hintaacian destruction of the Humans' body of knowledge. As he departs, he leaves them with a message of empathy, appealing to their higher passions.
--2. Klem, fed up with the progress his people are making (or aren't, rather), resorts to the methodologies of his enemies. He leads the destruction of a civilian territory, thus 
demonstrating the lengths to which the Hintaacians are willing to go in order to preserve their sovereignty, culture and identity. In doing so, his crew--mortified at his actions and
theirs--renounce their subordination, denying his commands and ultimately retreating from the massacre.
--3. As both sides of the war once again converge at "Niagara"...Klem encounters Aarakis, at which point the two idealists engage in a grueling duel. This persists for some time before
Frederickson joins in the battle, though the Humans' military efforts are in vain. Klem overcomes his opposition, comforting himself in the "knowledge" that the end has indeed justified 
the means.

Aarakis:
--1. This mission begins directly after Aarakis fired the "shot heard 'round the galaxy", and consists of little more than him wiping out the under-armed Hintaacian populace.
--2. After being decommissioned for over a year following his unordered and unwarranted assault at "Niagara", Aarakis is put back into the field once the Hintaacians have amassed a truly
threatening anti-Human force. As the Humans are dwindled to all but Aarakis and Frederickson, the former commands the latter to hold off Hintaacian forces while he approaches their leader,
Tsing. In the conflict that follows, Aarakis succeeds in offing Klem's protege.
--3. As both sides of the war once again converge at "Niagara"...Aarakis finally comes bow to bow with Klem. The two trade blows for some time before Frederickson comes to Aarakis' aid.
Once Klem has been defeated, Aarakis muses over the peace and solidarity which is to come.

//////////////////////////////////////////History/////////////////////////////////////////////////

--Human occupation of hintaak. (3089 CT)
--Alliance for the protection and furtherance of hintaacian interests established by natives. (3090 CT)
--Sovereign human government established on hintaak. (3090 CT)
--Treaty of Non-Intervention drafted by humans and hintaacians. (3091 CT)
--Humans attempt to settle Hintaacian-owned territory. (3095 CT)
--Treaty of Non-Intervention amended to allow for inter-species commerce. (3108 CT)
--Humans sold 17% of Doulada in exchange for technology. (3108 CT)
--Hintaacian-disavowed native (Designated "Charlie" by Human higher-ups) caught attempting to syphon Human technological secrets. (3117 CT) 
--Precedent set when Charlie is denied extradition, and sentenced to 272 Earth years. (3118 CT)
--Small Hintaacian cell launches attack on Human prison housing Charlie, are all killed. (3120 CT)
--Humans and Hintaacians enter into cold war. (3120 CT)
--Cold war comes to a head when Hintaacians construct missile silos along borders. (3145 CT)
--Humans retaliate by executing simultaneous destruction of all Hintaacian silos, citing breach of Non-Intervention Treaty as justification. (3145 CT)
--Respective officials from both peoples meet to discuss resolution of cold war. (3146 CT)
--Agreement is reached; Treaty of Non-Intervention is dissolved; Humans pardon Charlie as sign of good faith. (3147 CT)
--Humans achieve eligibility for Hintaacian government; Human history is entered into Hintaacian education curriculum. (3166 CT)
--The United Peoples of Hintaak is formed , with high-standing officials from both governments holding office. (3180 CT)
--Charges of nepotism are directed towards the establishment by Hintaacian officials; charges are thrown out by Supreme Court (which consists of only Humans). (3184 CT)
--Elements of Hintaacian history begin to be subtly thrown out/replaced in education curriculum. (3192 CT)
--Last of Hintaacian officials dies. (3218 CT)
--A number of government programs indirectly relegate majority of Hintaacian populus to ghettos. (3220-3232 CT)
--Hintaacian movement forms from dissatisfied public; large strikes are organized, depriving Humanity of cheap labor. (3281 CT)
--The Solidarity Ordinance is instated; Hintaacians are explicitly allowed entrance into government after decades of implicit denial. (3284 CT)
--Hintaacian history is effectively subsumed by Human recreation thereof. (3323 CT)
--The Cultural Preservation Initiative begins. (3329 CT)
--Klem is accepted to Oxford, where he begins a lifelong friendship/rivalry with the opinionated, but amiable Stuart. (3339)
--The Grand Canyon Project is completed. (3369 CT)
--The Christ, the Redeemer Project is completed. (3371 CT)
--The Niagara Relocation Rebellion. (3372 CT)
A number of decades into the Human occupation of Hintaak, the Humans began to realize their most egregious rape of the Hintaacians culture to date--The Cultural Preservation Initiative. 
The goal of the effort was to terraform piecemeal the lands of Hintaak into facsimiles of well-documented Earthen wonders. They began with the Grand Canyon, carving it out with disturbing 
accuracy into the Southern border of Doulada; next, they would erect a spitting likeness of Christ, the Redeemer atop the mountain of Doi'thana, later attributing the widespread Atheism of
the local populous to "utter coincidence". The final straw was placed when, after scouring the entire planet for appropriate locales on which to recreate Niagara Falls, the Human officials 
settled on the island of Rokoko, home to one of the last indiginous peoples of the planet. Unable to understand the words or directions of their land's appropriators, the natives 
understandably retaliated with what little weaponry they had, none of which could be considered efficacious against the Humans' advanced weaponry and defense systems. The Humans responded 
in kind, and wiped out almost the entire population, leaving only a few survivors to marvel at the destruction of their homeland in the name of cultural preservation. Miller would go AWOL 
in the middle of the conflict, while Aarakis would see the battle through to it's expected conclusion. It was after this "battle" that the first instigators of the wartime 
rebellion would begin to commune. Once the war was officially underway, Howitt would be drafted by the Human military, and Tsing would "desert" her biological people in the name of her 
principles.
--Aarakis is decommissioned. (3372 CT)
--Klem begins discretely recruiting rebels, including Tsing. (3372 CT)
--Klem successfully leads the assault on Humanity's Central Intelligence and History Repository. (3373 CT)
--The Humans retaliate to Klem's previous attack by instituting McCarthian practices upon their Hintaacian subjects. (3373 CT)
--Klem's crew begin attacking pockets of internment camps, gradually freeing or at least attempting to free the growing numbers of Hintaacian prisoners. (3373 CT)
--The Human government once again captures and imprisons Charlie (the former Hintaacian scapegoat) for "conspiring with the enemy". This is merely a ploy to lower Hintaacian morale. (3374 CT)
En route to the humans' home base, Howitt is tasked with transporting the prisoner. Eventually, the squadron comes under fire by a relatively small group of rebels (certainly one Howitt
and his crew are capable of handling), but with the old Hintaacian's words in his ear, Howitt finally snaps, attacking friend and foe alike until Frederickson takes it upon himself to down
Howitt, Howitt's crew, and their special cargo.
--News of Charlie's death spreads. Hintaacians the world over enter into a period of mourning and resignation. Klem himself leads his final solution in a last-ditch attempt to deprive the Humans of their most effective distinction from the Hintaacian forces: The willingness to cross the line. (3374 CT)
--After Klem's final solution, Humanity sees its greatest solidarity since the beginning of the war effort. Unprecedented resources are poured into an all-out assault on the Hintaacian rebels. (3375 CT)
--Aarakis is recommissioned. (3375 CT)
--The Humans manage to locate the Hintaacian hideout with the help of Stuart (who has been in contact with Klem since shortly after the NRR). Stuart justifies this to himself with reminders that his son is once again involved. (3375 CT)
--The Humans launch their final attack on the Hintaacians' base. The outcome is indeterminent. (3375 CT)

//////////////////////////////////////////////Monologues////////////////////////////////////////////////

--Miller:
Mission 1 (An Idle Army): 
"Captain's Log > Orders came down at 0400 hours--another grape. I shouldn't complain; an idle army, a happy people and all that. Still...Father would shoot me that knowing, piercing glare 
of his if he knew I entertained thoughts like this. Still...I didn't join this outfit for the body count; then again, I didn't join it so I could accompany some derelict mud movers to a 
glorified chicken run, I don't care how 'important' the mission is. Frankly, the whole operation sounds a bit self-indulgent, if you ask me--not that anyone would, of course. Oh well, at 
least it's an attractive outing. Can't say that I've ever been to Rokoko, but I hear from those in the know that it's beautiful, quaint. I should count my blessings, not my druthers. I 
should check my privilege. I should've taken it easy while out with the guys last night. I should take an aspirin. Still...We're entering the designated airspace now. Damn, they weren't 
lying. This place is gorgeous. I can only imagine what it'll look like in a few years...And to think that I will have played a small part? Forget how small; I'll take some pride in the 
that. Nothing like a change of scenery to clear up the headspace. I think today's going to be a good day, after all."

"Captain's Log > FUCK. What the fuck was that!? Uh, out of nowhere, goddammit! I've never seen anything like that before...My guys...those were MY FUCKING GUYS! What should I expect, 
though? It's not like we were trained for this. That wasn't a battle, it was a goddamn massacre. I couldn't have done anything...Jesus Christ, I swear I couldn't have done anything. 
There's no shame in running a way. Not like that. Not when it's warranted, and it was sure as hell warranted. It can't not have been warranted. Still, I can't go back. They'll be looking 
for me now, and not as a sister in arms, but a deserter...an enemy of the state...a villain. I've got to find a place to lay low for a little while. Fuck, maybe a long while. Maybe 
forever. Dad...Mom...Fuck. I can't for the life of me think of any way to get in touch with them without compromising my location...but they need to know--they DESERVE to know that I'm not
a traitor. Dad's position practically prohibits it, but maybe I can get in touch with my Mom. Certainly not via the plane--that's all monitored. Maybe face to face...but how to orchestrate
it? And without endangering her? Hell, without endangering myself? Of course, this is all assuming that I even have a home to endanger once my 'transgression' is all blown over...and it 
will be. Dad and the rest of those UPH stiffs are about to have their hands full with more pressing matters. More inter-fucking-galactic matters."

Mission 2 (The Blood of the Covenant):
"Captain's Log > Well, it's been...too long since I've had anything to report. Hell, I'm just reporting to myself at this point, but posterity...Oh, who am I kidding? This is for me. It's
definitely not for posterity. The way things are going, there likely won't be any in a few years' time, and that's a liberal estimate. It's not for my parents, either. My mother...well, I 
suppose I should be grateful that she at least tried to hide her shame as she cast me off without so much as a kiss goodbye. Probably in my best interests considering that acid tongue of 
hers. No matter. They say wartime combs the friends from the foes. Well, it also combs the family from the facsimile. There's my big word for the day. It's not all bad, though. I've made
some friends in the underground (calling it 'the resistance' just sounds so Hollywood). The blood of the covenant, right? I'm a little late to the game, for sure, but they need as many
hands as they can get, especially ones that know their way around a stick. I haven't spoken to the leader personally, but from everything I've been told by people I've grown to trust, he
seems...decent. And decency's a hard thing to come by these days. Still, decency's a din to the deaf without the will to assert it. Here's hoping he lives up to his reputation."

"Captain's Log > Twice: That's the number of times I've bitched out to the detriment of my squadron. Twice. Whoever that was...I could've saved them. It's unlikely, sure, but I COULD
HAVE. That's the line of thought a soldier ought to have. That's the line of thought they had. I saw that person--those people--not as an aid, but a substitute. Twice. Sure, we saved a 
good number of our people today, but the fact remains that I should have and could have saved more. Isn't that what Dad meant when he spoke of 'solidarity'? Well, I won't run again. If I
can't survive this war, I'll at least survive my own goddamn conscience."

Mission 3 (No Running): "Captain's Log > It's decided. at 0900 hours, we ship out for our most ambitious mission yet. The head of this outfit has finally seen fit to take our efforts to the aliens'
front door. No more trudging about in the slums, at best staving off their advances when we could be doing some real damage. After all, no war is won by stalemates, but 'by grand strategy,
concerted attacks, an indominable spirit and an irrefutable ideal'. So says the man in charge, at least, and I'm inclined to agree. Jesus, to hear him speak...He really makes you believe
it. Not that I didn't already, of course...He just has this ability to perfectly articulate those emotions and ambitions you didn't know you had; or if you did know, you didn't think them
feasible until he said them out loud. Like he's your favorite author endorsing a forgotten, but foregone conclusion. This time, no running."

"Captain's Log > I guess I shouldn't be surprised by this turn of events. I was born a turncoat, for Christ's sake, so it's only fitting I should die a traitor. All of us are taught that
war is ugly, but noone ever tells you that the participants are too. all of them. Kudos to those of us that can look in the mirror and deal with it; that can counterweight every scar with
a good deed done; that can justify their crimes--and they are crimes--with some believed nearness of justice. This isn't justice. It's a means to an end, and that end is no greater than
the sum of its parts. That end is fucked. If years down the line anyone is alive and unlucky enough to find this log, know that I didn't divest all virtue. Know that in spite of the 
ugliness, in spite of the injustice, this time, I didn't run. But I sure as hell walked away."

--Howitt:
Mission 1 (On Rails): "Captain's Log > <--Never thought I'd start out a journal entry like that. I guess we're supposed to take these logs seriously, but I'm pretty sure nobody's reading this
shit. Anyway, they said just to jot down our thoughts and expectations, so here I am. I should probably be scared, but I feel more at ease than I have in a long, long time. I've dealt
with shady tricks and shadier pimps that promised more than a quick death, and I was good at that life. I'm better at this. To be honest, it feels like coming home. This is what I've been
working towards--er--aimlessly, accidentally nudging up against for the past few years now, just in a different capacity. Yeah, it's not a simulation, but it doesn't feel a whole lot 
different. It doesn't feel any different, actually (It really ramps up my respect for Hudson, Cave, Treasure and the other greats. Such attention to detail!). The fact that I HAVE to do it
is kind of a drag, but I do HAVE to do it, so what's the point in complaining? If life's on rails, you might as well make a ride of it."

"Captain's Log > WHOOOOOOO! What a rush! That's the difference between a save-scum and a roguelike right there, fuck! My first assessment was mostly on point (this is almost identical to 
the environs I cut my teeth on), but I am a little shakier than usual. Maybe it's because we got some wounded in the turbulence (I'm used to running solo, and the thought of relying on and 
being relied upon by others messes with you a bit). Or maybe it's because that Tip made some good points. I'd be lying if I said I wasn't tempted to switch sides or at least hear the 
dude out. But that sort of decision's outside of my pay-range. I'd probably make the wrong one anyway. Better to leave these things to the professionals. 'Let the flyers fly and the criers
cri!'. I heard that in an environ once; can't help but find it appropriate. That philosophy's gotten me this far; let's see where it takes me next."

Mission 2 (Rumors): "Captain's Log > Word from the top is we're doing good. REALLY GOOD. So good in fact that the Tips are getting careless, attacking our facilities with little to no planning.
We should all be psyched, but there's been some lower-level dissatisfaction with the way we've been running our side of the war...with the sorts of prisoners we've been taking and the 
reasons we've been taking them. My bosses have been quick to dispel these rumors, but when I look around, I can tell that a good lot of my crew don't want to be here. Do I? I've been 
thinking more about that Tip transmission, about the sort of work we've been doing, the questions we haven't been asking until now...But the brass didn't just WIND UP there. They're there
because they've got the chops to make these sorts of decisions. We're here because we've got the chops to carry them out. At least that's what I tell myself...The shakes are setting in 
earlier now, prior to the fight and flight even. I threw out a line to some of my old contacts for a bit of the Pam, but none bit. I'm sure they're just busy. With the war on, everyone
needs a pick-me-up or a pull-me-down. I'm sure they're doing a hell of a lot better than I am. I'm sure of it."

"Captain's Log > There it is--that old aggression. There's that twitch-perfection that caught the brass' attention in the first place. I don't know why it took me this long to realize
what I've been doing wrong. I've been so in my head about the rightness/wrongness of what we're doing here that I forgot one's head is the last place they should be when their hand's on
the stick. In my environs, I never once thought of the enemy as anything more than a moving target; I never thought at all, actually. In the time it takes to think, you can react twofold,
and if the enemy's not following that same strategy, you've already won. And winning feels good. Not later, when you think back on it, but then; right there; in that moment; when the hull
starts to glow, and you know it's only a matter of time. If you can't join 'em, beat 'em. And take some fucking pleasure in it."

Mission 3 (The Shakes): "Captain's Log > Here I am dt-ing from the lack of skirmishes we've been assigned lately, and I get a message on the big line. 'This is it!', I'm thinking, 'The Tips have shot up the
homestead, and we're to go in and round 'em all up.' No such luck. Stuart himself comes on the line and tells me we've been tasked with a goddamn transport mission. Turns out old Charlie
himself's been made, and we're to head over there pronto, pick him up, and bring him back to the stiff-shirts unharmed. God knows what they want with the poor bastard. What's worse is he's too
valuable an asset to keep in the hold with the rest of the rabble we've been rounding up for the past THREE FUCKING DAYS, so I've been ordered to keep an eye on him personally, making sure
he's comfortable up until the point they lynch him or worse. I don't like this. I haven't seen any real action in over two weeks, and the shakes started back a couple of days ago. Here's
hoping we come across an odd vigilante or two to take the edge off."

--Frederickson:
Mission 1 (Men and Women and God): "Captain's Log > We were scaning our perimiter as always when boss phoned in that thered been an attack not far from were we are so we are doubletiming it there rite now. Its
suppose to be pretty importent so im worried we might be goin up against more than we ever have but I know my boys can handle it. We got good men and women and God on our side so all we
need is a lil luck too and well be good. If I dont make it out of this one tell mama I love her and ill miss her cookin haha. Tell my daddy I fought hard cuz I will and give bunny a good
rub on the belly for me. But please dont tell em there were any tips on my crew. There not as progresiv as me and they aint seen how hard some of these good ones like mine fight the good
fight. My soul to Jesus if my body to the earth. Amen."

"Captain's Log > Me and my boys pulled it off. We had to shoot down one of our own tho. I dont know why but he just started in on all of us frendlies. I didnt want to but if it comes down
to my boys or some other captains Im pickin mine every time same side or not. We killed all the tips tho so Id say the mission was a succes. Now theres just a little bit of cleanup and
paperwork between me and my leave. I can smell mamas homemade casserole rite now and its putting all this uglyness out of my head. Well I got a call comin through on the big line so I
better finish this up rite quik. Cpt. Andrew Frederickson of the 202nd out."























Level 1: A Precipatory Showing of Teeth
"Captain's Log > The alien threat, ever-present since well before my birth, had become such a constant to my people that it was all but taken for granted by their majority...and what's more damning, treated as just another foreign affair by those who found themselves in positions to rally public opinion against these intruders. This efficacious minority opted rather to encourage a defeated obedience which, until some time in my adolescent years, I--like so many others--displayed unquestioningly...But even the well-trained bitch, obedient to a point, resorts to her bite when for so long her bark goes unheeded by an unjust master. This day would serve as a precursor, a precipatory showing of teeth."
"Captain's Log > Much had been accomplished. The enemy's net personnel losses were minor, to be sure, but my crew and I had served as diligent messenger-boys, tossing out weighty, long-delayed correspondence with such enthusiasm as to arouse the attention and ire of some very important figures whose pristine new Porsches we had damaged with the occasional stray parcel. We had amassed interest on both sides of a fight which had barely yet begun, but to our would-be conspirators seemed, for perhaps the first time in their lives, a possibility. In time, my people would come to see it as I do--a necessity."
Level 2: Ash From Ember
"Captain's Log > We had lay low for some time after our first assault in an effort to both gauge our cause's support, and to avoid any retaliatory action our surfacing may invite. We had been idle for some time now, however, and whatever marginal resistence our rebellion had bred would soon become ash from ember if we did not resume our charge. Already, the enemy had begun to distribute propagandistic pamphlets across the net in an effort to dissuade any more of our brethren from taking up arms against their malefactors. Our next target, then, seemed obvious...We would dam their misinformation at its source. The impressionable among us would not be impressed upon."
"Captain's Log > Though we prevailed, the Library had proven more heavily fortified than we had expected--and in hindsight it seems so obvious that it ought to have been. Is knowledge not the most valuable weapon at any intelligent creature's disposal? Upon their entrance into our world, did the alien not steal first our tongue, our ideologies, our history? It was only then that they could guarantee the theft of our will. No longer would the alien among us have recourse to the words of their progenitors, by which venomous rhetoric they had undoubtedly enslaved the feeble-minded amongst themselves before ever turning it upon us. At this thought, I felt a pang of sympathy for the alien as conscious being, vulnerable to the same sophistry as us, so long as it was confidently voiced...but I buried this worry as quickly as it had sprouted from the topsoil of my mind, where in another existence may have grown the identity of my own people, and not another."
Level 3: Soldiers After All
"Captain's Log > If performance is measured in attention, we just took home the gold...Hell, we bagged the silver and bronze, too. Those alien bastards have begun instituting safeguards the likes of which McCarthy would have found reckless. Millions of our people now lay in alien custody...assuming they're not already in the ground, offed via trial-less execution in the name of global welfare. I had planned on gauging our success in proportion to reciprocal alien action, but I had always hoped that action would have a semblance of direction. I never expected this. I certainly didn't want it. Nevertheless, the alien's recourse will have been in vain. If detachment's demanded of my position, I'll gladly walk into the battlefield crucifix ashoulder. Our enemy speaks in barbarisms? We shall respond in kind. We are soldiers, after all. If God should exist--a possibility that seems less and less likely by the day--His job's about to become a lot harder than mine."
"Captain's Log > The alien's civilian transports...rerouted to Hell. If justice be anything more than an idle fancy, I'll plot course there soon enough. But not before I pick up a few more deserving passengers on the way."
Level 4: Straight Down the Line
"Captain's Log > Morale has...dampened since our last mission. Banter has all but been extinguished from the halls of our ship, resonating as they now do only with the faint echoes of footsteps--footsteps carrying their person to no particular destination, but comforting them in the back-and-forth, sole-first manner of the mad. I can't blame them, of course. They haven't either the education or the constitution to recognize their role in the proceedings demanded of us as a people. They are tools, just as I am a tool, just as our political officials are tools, albeit of a different nature, and more fragile. My crew, blind to all indicators, operates under the false assumption they've wills to exercise...choices to make. There is no agency here. I act as the hand of an unconscious people, and my crew its fingers. Should I fail to communicate this reality to them in a way that they not only understand, but accept, I fear for the world mutiny would precipitate: A tyranny more tyrannical and a vengeance more vengeful than those we've known so long as to almost take for granted. All of this, should it come to pass, shall do so as a result of my inability to pass on what is in our times that most pragmatic and intuitive of all philosophies: All orders, all being, all meaning come straight down the line."
"Captain's Log > The skin of our teeth--I believe that's the expression. Our survival barely amounts to a matter of celebration, though, as our company is a shambles. Casualties have (almost regretably, I'm loathe to say) been relegated largely to the realms of equipment and infrastructure rather than lives, a reality which renders retaliation far less immediate than I would generally advise. What's more, I feel as if that advice, sagacious though it may be, would fall upon deaf ears. The damage to morale has been far more extreme than I initially feared, as evidenced by my crew's uneven and overall disastrous performance this day. In those forthcoming, I foresee a buckling of the holds, and a wresting of the one advantage we've heretofore enjoyed: solidarity."  
Level 5: Reparations
"Captain's Log > Engineers, pilots, officers, mechanics, programmers, strategists, informants, propogandists...These are the major players one associates with a militaristic movement. These are the individuals that, throughout history, have fanned the flame of revolution when the tinder has lay in the Sun a bit too long, carefully placed by the philosophers and the odd carpetbagger. But are these participants not synthetic? Are they not first and foremost persons, albeit bettered with the training and direction requisite their stations? Are they not susceptible to the same degredation, the same denigration, suffered by and directed towards their charges, respectively? Certainly, in wartime, there is a maintenance primary to all others, and one without which our company finds itself: The maintenance of the mind. Like an engine unoiled, when this object enters into disrepair from overuse or--as is invariably the case with war--misuse, it begins to sputter and spit with the misgivings of the heavy-hearted. It is those very misgivings which plague our great machine now, and threaten to stall our efforts as they've only just begun. Though I've neither the background nor the inclination for it, to whom can the rehabilitation of my crew fall but me? Reparations are in order, and I shall undertake them in the only way I know how. By the light of the enemy's fire."
"Captain's Log > We'd been out of the slums too long. Anger isn't the most difficult resource to come by these days, but it's nevertheless quickly expended when removed from its source. If any of us harbored any regrets as to our present undertaking, they were readily recanted when confronted with the harsh reality of our plight, benefiting as reality generally does from the crystalline lucidity of the bird's eye. The fact that a number of the alien's own now found themselves under the thumb of their progenitors served to aid our mission in two ways: First, it proved that the alien's depravity sank to the depths even even of self-deprecation; second, it steeled us against the supposition that, as a people, we were alone. All in all, today had amounted to little more than a costly reminder of why we do what we do...But no cost, it would seem, is too great for the sovereignty that is my aim--an aim once again shared by my brothers and sisters in arms."
Level 6: Fink
"Captain's Log > Parsons. An unassuming surname, by all accounts. It's likely that most of us have known at least one or two in our time. A childhood friend down the sector, perhaps...Or an old composer by whose works we've imagined and opined for a simpler time of calico bonnets and hickory winds.Or, what's most likely, that irredeemable fink of a magistrate the Alien calculatedly cropped from our numbers for the express purpose of achieving greater control--all under the guise of "reparations". I, of course, find myself concerned with the latter. Ever since our last outing, the Alien has granted an unprecedented amount of media coverage to those of our people desperate, weak or foolish enough to band with the enemy, and Parsons has been continuously at the forefront. A weasely, frail and especially pale figure standing a head below average, his stature and apparent infirmity belie his possession of the one natural gift by which he may be said to surpass the average person: His gift of speech. This is not to say that he can rally a nation into devilishness by the crack of his charisma, nor can he frighten the masses into obedience. Rather, his efficacy is of an even more terrifying sort in that it is a very nearly exact facsimile of genuine approbation for the Alien occupation. His manner is never anything other than conversational, and it is this false intimacy that is his greatest weapon, and currently, the Alien's as well. For the peasantry can be bought with threats and confidence, but the intelligencia are particularly susceptible to a perception of humanity in the enemy. It is therefore this natural perception of otherness that we must seek to preserve, lest the flames of impending prosperity die out by the cold winds of historically heterogenous assimilation.

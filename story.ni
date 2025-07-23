"The Hidden Room" by Valentina

Release along with an interpreter.
Release along with a website.
Release along with the introductory booklet.

When play begins:
	say "You are standing in front of the house where Gregory Smith was murdered. The front door is locked."

The entrance is a room. The description is "This is a pretty impressive house." 
The entrance hall is a room. The description is "This place is cold and dark. It feels like someone is watching you."
The front door is a door. It is locked. The entrance key unlocks it. The front door is north of the entrance and south of the entrance hall.

The garden is a room. It is east of the entrance. The description is "A neglected garden with wilted flowers."

A vase is in the garden. It is a container.

A screwdriver is in the vase. It is portable.

Rule for printing the name of a container (called the item) while listing contents of a room:
	say "[the printed name of the item]";
	omit contents in listing.

Instead of examining the vase:
	if a screwdriver is in the vase:
		say "There's a screwdriver in the vase. It could be useful.";
	otherwise:
		say "There's nothing in the vase";

The rubber boots are in the garden.
The entrance key is in the rubber boots. The description is "This must be the key to the front door."
		
Instead of examining the rubber boots:
	if the entrance key is in the rubber boots:
		say "Dirty rubber boots. There's a key inside.";
	otherwise:
		say "There's nothing in the rubber boots";
		
The living room is a room. The living room is east of the entrance hall.
A table is in the living room. The table is a supporter. The description is "A modern wooden table in the middle of the living room."
A flashlight is on the table. The flashlight is portable. It is a container. The description is "The flashlight is a bit worn out, but it could still be useful."
A remote control is on the table. The description is "A TV remote control."
A TV is a device in the living room. The description is "That's a pretty big TV.". The TV is switched off.
A battery is in the entrance hall. The battery is portable. The description is "A small battery is lying on the floor."
A basement is a room. The description is "A damp, dark basement." The basement is west of the entrance hall.

Rule for printing the name of a supporter (called the item) while listing contents of a room:
	say "[the printed name of the item]";
	omit contents in listing.
	
Instead of switching on the TV:
	if we have not taken the remote control:
		say "You'll need to get the remote control first.";
	otherwise:
		now the TV is switched on;
		say "You switch the TV on and you see footage from the security cameras at the entrance of the house. But something is wrong — the footage appears to be corrupted or erased, leaving only static. It looks like the footage was deliberately tampered with.".

Placing battery is an action applying to two visible things. Understand "place [something] in [something]" as placing battery.

Instead of placing battery:
	if the noun is not the battery:
		say "That doesn't fit here." instead;
		rule fails;
	if the second noun is not the flashlight:
		say "You can't place that there." instead;
		rule fails;
	if we have not taken the battery:
		say "You have to find the battery first." instead;
		rule fails;
	otherwise:
		say "You can use the flashlight now.";
		move the battery to the flashlight.
	
Instead of taking the flashlight:
	if the battery is not in the flashlight:
		say "You need to place the battery into the flashlight first.";
	otherwise:
		move the flashlight to the player.
	
Instead of going to the basement:
	if the battery is not in the flashlight:
		say "Hmm... the lights don't work here." ;
	otherwise:
		Move the player to the basement.
		
The tool storage is a room. The description is "A small, cluttered shed filled with gardening tools. In the middle of the narrow space, you see a familiar face – the gardener, one of the suspects."		
The storage door is a door. The storage door is unlocked. The storage door is north of the basement and south of the tool storage.

The gardener is a man. The gardener is in the tool storage. The description is "Neal, a man in his early sixties, has worked for Gregory Smith for many years. He has always been known for his loyalty."

Interrogating is an action applying to one visible thing. Understand "interrogate [someone]" as interrogating.
Asking why is an action applying to one visible thing. Understand "ask [someone] why he is here" or "ask [someone] why she is here" as asking why.

Instead of asking why the gardener, say "The gardener: [italic type]I'll confess everything, just don't arrest me. I wanted to hide the pesticide I had given the plants to make them wither. I wanted to get revenge on Mr. Smith because he didn’t pay me for two months. But I didn't kill him."
Instead of interrogating the gardener, say "The gardener: [italic type]Mr. Smith sent me to the post office that day. There was a package waiting for him there. He was still alive when I delivered the package to him. That package must be somewhere in the house."

The kitchen is a room. The kitchen is north of the entrance hall. The description is "A typical kitchen. There’s nothing unusual here."

Definition: a direction is up-or-down if it is up or it is down.

Instead of going up from the entrance hall:
	say "You climb the stairs and reach the first floor.";
	move the player to the corridor.

The corridor is a room. The description is "The empty hallway, with nothing but white walls, gives a creepy feeling." The corridor is up from the entrance hall.
The office is a room. The description is "A spacious office perfect for quiet work." The office is west of the corridor.

A painting is in the office. The description is "A large painting depicting a noble family covers a large part of the wall."
A handle is in the office. It is portable. The description is "Small, metal drawer handle." The handle is a thing.
The curtains are in the office. The description is "The long, heavy curtains block out all the light. There's something strange about them..."
The nephew is a man. The nephew is in the office. The nephew is undescribed. The description is "Aaron, Gregory's nephew, is a young man in his early twenties, known for his rebellious behavior. Although he is problematic and often at odds with his mother, his uncle was the only person he truly respected. Gregory even said that Aaron meant as much to him as his own son."

Instead of pulling the curtains:
	say "A young man's sullen face appears from behind the curtains. It's the victim's nephew.";
	now the nephew is described.
	
Instead of asking why the nephew, say "The nephew: [italic type]I'm here because my cousin borrowed my father's watch and hasn't given it back. That's all."
Instead of interrogating the nephew, say "The nephew: [italic type]On the day of the murder, I was having lunch with my mother. You can ask her if you want. I didn't kill my uncle."

The bedroom is a room. The bedroom is north of the corridor. The description is "A spacious bedroom with huge bed and modern furniture."

The drawer is in the bedroom. It is openable and closed. The description is "The drawer of the old, dusty chest of drawers."

The small key is in the drawer. The description is "A small rusty key."

Putting handle is an action applying to two visible things. Understand "put [something] back on [something]" as putting handle.

Instead of putting handle:
	if the noun is not the handle:
		say "That doesn't fit there." instead;
	if the second noun is not the drawer:
		say "You can't put a handle here." instead;
	if we have not taken the handle:
		say "You have to find the handle first." instead;
	otherwise:
		now the handle is part of the drawer.
		
Instead of opening the drawer:
	if the handle is not part of the drawer:
		say "You'll need a handle for that." instead;
	otherwise:
		say "You found a small key. You take it with you.";
		move the small key to the player.
		
The wardrobe is in the bedroom. The wardrobe is a container. It is openable and closed. The description is "A modern, large wardrobe that can hold a lot of clothes. It sounds like something is rustling inside."
The housekeeper is a woman. The housekeeper is in the bedroom. The housekeeper is undescribed. The description is "Phoebe, a woman in her late thirties, only recently started working for Gregory. She was in urgent need of a job, so Gregory decided to help her by hiring her as a housekeeper."
Instead of opening the wardrobe:
	say "A housekeeper is hiding in the wardrobe.";
	now the housekeeper is described.
Instead of asking why the housekeeper, say "The housekeeper: [italic type]I am here because I forgot my car keys. I was so upset about the murder that I couldn't drive, so I asked the gardener to give me a ride when he got back from the post office. I completely forgot about my keys."
Instead of interrogating the housekeeper, say "The housekeeper: [italic type]On the day of the murder, I was here. I went to Mr. Smith's study to ask him what to prepare for lunch. However, the door was locked, and he didn't answer. So I called his son, and he broke in."

The bathroom is a room. The bathroom is east of the corridor. The description is "The bathroom is clean and neat, except for the broken mirror."
A piece of glass is in the bathroom. It is portable. The description is "This piece of glass probably belongs to the broken mirror."

The compartment is in the bathroom. It is a container. The description is "A small compartment in the wall, secured with a metal grate held by several screws. It seems you need a tool to detach the grate."
The grate is in the compartment. The grate is undescribed. The description is "A metal grate, screwed into place to secure the contents of the compartment." 
Using screwdriver is an action applying to two visible things. Understand "use [something] to detach [something]" as using screwdriver.
The cyanide bottle is in the compartment. The cyanide bottle is undescribed. The description is "A small, unmarked glass bottle filled with a clear liquid. Could this be the poison that killed Mr. Smith?" 
The player-knows-about-the-bottle is a truth state that varies. The player-knows-about-the-bottle is false.

Instead of using screwdriver:
	if the noun is not the screwdriver:
		say "This is not the right tool.";
		rule fails;
	if the second noun is not the grate:
		say "You can't use this here.";
		rule fails;
	if we have not taken the screwdriver:
		say "You will need a screwdriver.";
		rule fails;
	otherwise:
		now the cyanide bottle is described;
		say "You found a cyanide bottle. This is clear evidence that the victim did not commit suicide.";
		move the cyanide bottle to the player;
		now the player-knows-about-the-bottle is true;
		now the grate is nowhere;
		now the compartment is nowhere.
		
Instead of drinking the cyanide bottle:
    end the story saying "You couldn't resist tasting the strange potion. Now you're fading fast. Soon, Mr. Smith won't be the only one to succumb to its effects.";
	
The hallway is a room. The hallway is up from the corridor. The description is "Hallway on the second floor."
The study is a room. The study is west of the hallway. The description is "The victim was found in this room. The door was locked when the body was discovered, raising the question of who locked it. This room might hold the key to everything."
The son's room is a room. The son's room is east of the hallway. The description is "The room is spacious and clearly hasn’t been cleaned in a long time. The victim's son is at home. Strange."
The dining room is a room. The dining room is north of the hallway. The description is "A large dining room with a table big enough to seat twelve people."

Instead of going up from the corridor:
	say "You climb the stairs and reach the second floor.";
	move the player to the hallway.
	
Instead of going down from the corridor:
	say "You descend the stairs back to the ground floor.";
	move the player to the entrance hall.

The son is a man. The son is in the son's room. The description is "Charlie, Gregory's son, is in his late twenties and was frequently at odds with his father, especially after his parents' divorce. Their relationship was never close, but Charlie chose to live with his father after the divorce. He wasn't supposed to be here now."
Instead of asking why the son, say "The son: [italic type]I'm here because this is my house. How much longer is this investigation going to take? Why haven't you found any clues yet? It's more than suspicious that my father suddenly locked himself in his room."
Instead of interrogating the son, say "The son: [italic type]I was at home when the murder happened. The housekeeper called me to check what was going on. Since the door was locked, I forced it open."

The sister is a woman. The sister is in the dining room. The description is "Julie, Gregory's sister, is a woman in her late fifties who has always maintained a good relationship with her brother. The two of them were close since childhood. She wasn't supposed to be here now."
Instead of asking why the sister, say "The sister: [italic type]I am here because I thought my son might be here. He's been acting strange lately. But don't get me wrong, he didn't kill his uncle. He would never do something like that."
Instead of interrogating the sister, say "The sister: [italic type]On the day of the murder, my son and I were having lunch at a restaurant when he suddenly got a call. He seemed really upset and left in a hurry. I have no idea who he was talking to."

The bookshelf is in the study. The description is "A tall bookshelf stands against the wall, slightly leaning forward as if it hasn’t been touched in ages. It creaks faintly at the base, hinting it may be moveable."
The hidden room is a room. The description is "It seems this place has been long forgotten." 
The hidden door is a door. The hidden door is locked. The small key unlocks it. The hidden door is north of the study and south of the hidden room. The hidden door is undescribed. The description is "An old wooden door with a sturdy, rusted lock."

The desk is in the study. The desk is a supporter. The description is "On this desk was the cup of poisoned tea consumed by the victim. Analysis revealed that the tea contained cyanide."

Instead of pushing:
	if the noun is not the bookshelf:
		say "You can't push this.";
	otherwise:
		say "You push the bookshelf aside, revealing a hidden door behind it.";
		now the hidden door is described.
	
The package is in the hidden room. The package is a container. The package is not openable. The description is "A plain brown package tightly wrapped with thick rope. The knots look almost impossible to untie by hand."
The rope is part of the package. The description of the rope is "A coarse, thick rope, securely tied around the package. It seems too strong to break without a tool."
The player-knows-about-the-package is a truth state that varies. The player-knows-about-the-package is false.
The player-knows-about-the-stairs is a truth state that varies. The player-knows-about-the-stairs is false.

Cutting rope is an action applying to two visible things. Understand "cut [something] with [something]" as cutting rope.

Instead of cutting rope:
	if the noun is not the rope:
		say "You can't cut this." instead;
	if the second noun is not the piece of glass:
		say "You can't use this to cut." instead;
	if we have not taken the piece of glass:
		say "You will need a piece of glass." instead;
	otherwise:
		now the rope is nowhere;
		now the package is open;
		now the player-knows-about-the-package is true;
		say "The package contains some incriminating photographs and a letter. There is a set of grainy photographs showing the housekeeper meeting with the victim's nephew. The exchange of a small bag between them is unmistakable. There is also a handwritten note from the victim, detailing his suspicion about the housekeeper's involvement in drug dealing.".

The secret stairs are in the hidden room. 
Instead of examining the secret stairs:
	say "You found the secret stairs. Following them, you come to an unusual door. After you open it, you are in the office. You realize that the huge painting was actually the door to a secret room.";
	move the player to the office;
	now the player-knows-about-the-stairs is true.
	
Using as a door is an action applying to one visible thing. Understand "use [something] as a door" as using as a door.

Instead of using as a door the painting:
 say "You moved the painting and climbed the secret stairs to the hidden room.";
 move the player to the hidden room.

Instead of going down from the hallway:
	say "You descend the stairs back to the first floor.";
	move the player to the corridor.

Deducing is an action applying to nothing. Understand "deduce" as deducing.
Deduction state is a number that varies. Deduction state is 0.
Correct-answers is a number that varies. Correct-answers is 0.

Instead of deducing:
	if the player-knows-about-the-bottle is false:
		say "You haven’t pieced everything together yet. Maybe there’s more evidence in the house?";
	else if the player-knows-about-the-package is false:
		say "You’re close to forming a conclusion, but you feel like there’s still something important in one of the rooms.";
	else if the player-knows-about-the-stairs is false:
		say "You feel like you’re missing something crucial. Perhaps there are areas of the house you haven’t fully explored yet?";
	else:
		say "It’s time to put everything together. Answer the following questions:[paragraph break]";
		now the deduction state is 1;
		say "Who had the most to gain from the victim's death?";

After reading a command when the deduction state is greater than 0:
	if the deduction state is 1:
		if the player's command matches "housekeeper":
			increase Correct-answers by 1;
		now the deduction state is 2;
		say "What piece of evidence in the package links the housekeeper to the nephew?";
		reject the player's command;
	if the deduction state is 2:
		if the player's command matches "photographs":
			increase Correct-answers by 1;
		now the deduction state is 3;
		say "Which room do the secret stairs the killer used lead to?";
		reject the player's command;
	if the deduction state is 3:
		if the player's command matches "office":
			increase Correct-answers by 1;
		now the deduction state is 4;
		say "Who hid the cyanide bottle while the real murderer created a distraction?";
		reject the player's command;
	if the deduction state is 4:
		if the player's command matches "nephew":
			increase Correct-answers by 1;
		now the deduction state is 5;
		say "You’ve answered all the questions. Type 'conclude' to finish the case.";
		reject the player's command;

Concluding is an action applying to nothing. Understand "conclude" as concluding.

Instead of concluding:
	if deduction state is not 5:
		say "You haven’t answered all the questions yet.";
		stop the action;
	if Correct-answers is 4:
		say "The housekeeper called the nephew and told him they had to get rid of Smith. She then brought tea to Mr. Smith, waited for him to drink it and die, then locked the door and left using the hidden stairs. On the first floor, she ran into Smith’s nephew, who had arrived too late. She then forced him to hide the cyanide bottle, which she had forgotten to leave with the victim, probably distracted by the thought of where to place the package with the evidence.";
		end the story finally saying "You’ve solved the case.";
	else:
		say "It seems you've missed some important clues. Here's what happened:[paragraph break]";
		say "The housekeeper and the nephew were responsible. The housekeeper poisoned Mr. Smith with cyanide and then locked him in his room, leaving using the secret stairs. The nephew, who was too late to stop her, had to hide the bottle because she had forgotten to leave it with the victim.";
		end the story finally saying "You’ve failed to solve the case.";
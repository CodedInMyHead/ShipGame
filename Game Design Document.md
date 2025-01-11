Table of Contents:
- [Intro](#Intro)
	- [Introduction](#Short Indroduction to the game)
	- [Inspiration](#Inspiration)
	- [Genre](#Genre)
	- [Target Audience](#Targed Audience)
	- [Key Player Experience](#Key Player Experience)
- [Tools](#Tools)
	- [Development Software](#Development Software)
- [Art](#Art)
	- [Theme](#Theme Interpretation)
	- [Design](#Design)
- [Concept](#Concept)
	- [Movement](#Movement)
	- [Attacks](#Attacks/Fighting)
		- [Shooting](#Shooting)
		- [Melee Combat](#Melee-Combat)
		- [Abilities](#Abilities)
	- [Health/debuffs/repairs](#Health/debuffs/repairs)
		- [Ship-dependent-debuffs](#Ship-dependent-debuffs)
		- [Other debuffs](#Other-debuffs)
	- [Characters](#Characters)
	- [Maps](#Maps)
	- [Enemies](#Enemies)
	- [Upgrades](#Upgrades)
		- [Skill-tree](#Skill-tree)
		- [Docks](#Docks)
		- [Perma upgrades](#Perma-upgrades)
- [Controls](#Controls)

# Intro

## Short Introduction to the game
A game where the player is steering a ship from a birds eye view and has to fend off incoming enemies. Enemies can be other ships or sea-monsters.
Killing those enemies rewards the player with gold, used to upgrade his ship.
The player can also explore the map he finds himself in.
Ultimate goal is to defeat all bosses on the map.

The game can also be played in co-op.

## Inspiration
- Vampire Survivors
- Treasure of Cutlass Reef (https://www.silvergames.com/en/treasure-of-cutlass-reef)
## Genre
- Rouge-Lite
- Vampire Survivors
- Bullet-Hell
- Indie
- Casual

## Target Audience
Casual Players are the primary target audience.

## Key Player Experience
Player has to continuously fight enemies (with short possible pauses in between), while trying to upgrade his ship along the way, becoming stronger.
What enemies to fight, where to find bosses or find docks to upgrade should be intuitive and the game should tell the player where to find those and make suggestions, so that the player always knows what his next target of interest could be.

The player should be able to continuously grow in power, until reaching a possible limit.

Having the possibility to do upgrades in different orders and to select different characters and different specializations as well as having the freedom to travel the map freely and doing bosses in different order, the player has an intuitive to come back to use different strategies.

Playing in co-op also adds the possibility to combine different strategies.

# Tools

## Development Software
- Game Engine: Godot (4.3)
- VCS: Github
- Art: Gimp
- Audio: Audacity

## Platform
- Windows
- MacOS


# Art

## Theme Interpretation
- High Resolution Pixel Art, 128x128
- Dark, "unfriendly" style
- Using darker colors, not saturated or bright

## Design
-

# Concept

## Movement
The player can move forward and backwards, but moving backwards is way slower.
The player cannot move left or right, rather the player can turn the ship left or right.

## Attacks/Fighting

### Shooting
The Player has a cone to the left and right of the ship where he can send out bullets, to hit enemy targets. He cannot shoot outside of those cones, rather he has to turn in order to reach other angles.
While pressing the shooting button the player will shoot bullets continuously until he runs out of stored bullets.
When the player stops shooting, he starts to reload bullets, until he reaches a limit.
The player can decide to shoot at any moment even if the bullets aren fully reloaded.

### Melee-Combat
When the Player comes near an enemy target the enemy gets highlighted. Hovering over the highlighted target and pressing the melee attack command the player enters melee combat with said target.
When in melee combat, both player and enemy are pulled towards each other and stay in close proximity to each other. The player can try to outrun this force pulling him in in order to cancel the melee combat.
While in melee combat, player and enemy start to battle troops agains each other, indicated by a number above both, showing how many troops are left. First one to loose all troops dies. This is automatic and troops kill each other automatically, via the stats they have (strength, amount), as well as some randomization.
The player can be engaged in melee combat with multiple enemies at once. But doing so makes him weaker in each single ongoing combat.
Same goes for the enemy, when the game is played in co-op.

The player can still shoot and use all his abilities while in melee combat.

The enemy also can initiate melee combat, but their range to do so is smaller than the players and not all enemies are interested in that behavior.

### Abilities
The player can also use different abilities to help him.
Those abilities depend on the character the player choose.

The player has following abilities:
- A passive
	- Activates passively when conditions are met.
- Two active abilities
	- Abilities are tied to a cooldown and no other resource. Need to be unlocked vial the skill-tree and can be upgraded there. Active abilities have to be activated manually.
- Ultimate ability:
	- Basically the same as active ability, just much more powerful and usually paired with longer cooldown.


## Health/debuffs/repairs

### Ship-dependent-debuffs
When the player gets damaged he can also sometimes receive ship-dependent-debuffs. Those debuffs can be for example that a mast broke, this would slow the player.
When affected by those types of debuffs, the health of the player also gets capped. For example if mast is broken the max health of the player can only be 80% (or 20% less). Those health capping stats can stack, but never reach 100%.

The player can restore health in docks ([Docks](#Docks)), and undo the debuffs.
If the player only tries to restore health and ship-dependent-debuffs are still present, he can only restore health to the cap they set.
When a ship-dependent-debuff is removed also some health is restored as well.

### Other-debuffs
Other debuffs the player can have are for example burning. Those do not cap the max health of the player and vanish on their own after some time.


##  Characters
The player has to choose a character before starting a round. If played in co-op all players have to choose different characters (no duplicates).
The character determines what abilities the player can use, what the base stats are (like, how many bullets, troop strength and amount, move speed, etc.), as well what is in the skill-tree.

Some (most) characters need to be unlocked first.
For this the player may have to do get a specific achievement first and then has the ability to unlock them via xp, that can be earned by playing games. (For more detail on xp look [here](#Perma-upgrades)).

## Maps
The game will feature a variety of maps, the player can choose to play on.

Different maps will have different came elements that may not be present in other maps. For example one might feature ice, while others might not.

Maps have to be unlocked first, by doing some achievement, mostly by beating the previous map.
## Enemies
Enemies can be other ships or sea-monsters.
They will try to shoot the player or initiate melee combat. Some can also use abilities to give more variety.

Enemies show following stats above their head:
- How many troops they have and how strong they are (example: 100:5)
- Health as a number in different colors depending on how low the enemy is (example: green - full health, yellow - medium health, red - low health)

When defeated their corpse shows how much gold can be recovered, by driving over it.

## Upgrades

### Skill-tree
The skill-tree is where the player can purchase upgrades with the gold he earned.
As the name suggests some upgrades need prior upgrades to be purchased.

The skill-tree is circle-shaped, going from the middle outwards.

The skill-tree also has specialization-paths that are exclusive to each other and are placed at the edges. So buying into one specialization-path locks the others.


### Docks
To do upgrades or repair the ship, the player has to find a dock. There are multiple docks scattered around the map.

When docking on a dock, the game "behind" pauses and an upgrade screen is shown.
Here the player can do upgrades in the skill-tree or do some repairs on the ship, as well as recruiting troop.

After leaving a dock, the dock goes on cooldown. So to do upgrades again, the player either has to find a different dock or to wait for the cooldown.

When playing in co-op, after one player enters a dock, all players can upgrade after each other.


### Perma-upgrades
In the main menu outside of the game, the player can do permanent upgrades, that affect every game he plays on forward.

Those upgrades are also in a skill-tree.

The currency for the permanent upgrades is xp, which can be earned by playing games. Xp orbs are dropped by bosses and sometimes enemies.

Permanent upgrades can also be disabled (and re-enabled), after they have been purchased.



# Controls
Can be played with keyboard and mouse.
Can also be played with controller.

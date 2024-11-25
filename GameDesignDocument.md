# Game Design Document

- [Game Design Document](#game-design-document)
  - [Short Intro](#short-intro)
    - [Inspirations](#inspirations)
    - [Genre](#genre)
    - [Player Experience / Key Selling Points](#player-experience--key-selling-points)
    - [Platform](#platform)
    - [Development Software](#development-software)
    - [Target Audience](#target-audience)
  - [Concept](#concept)
  - [Art](#art)
  - [Audio](#audio)



## Short Intro

`A Ship Game` is a Vampire Survivor Style Game in a new setting, new abilities and Skill Trees both per-round and permanent.

### Inspirations

- Vampire Survivors
- Sea of Thieves
- Brotato
- Cookie Clickers
- Earth Inc.

### Genre
- Vampire Survivors, Base-Building, Simulation, SinglePlayer, Clicker, Co-Op

### Player Experience / Key Selling Points

Has to be intuitive to use and have tutorials.
Multiple approaches should be possible to completing the game.

It should have a clear progressing, making sure the player knows what his next goals are and the game should also provide useful rewards, not a generic in-game-paid-currency. The game should be possible to be played with minimal waiting times (see Clash of Clans)

### Platform

- Windows
- MacOS
- Linux 
- Android
- Browser?

### Development Software

- Game Engine: Godot
- Assets: Aseprite? / Pixelorama
- Git as VCS

### Target Audience
- Casuals, Children ;-)

## Concept 
SinglePlayer with Co-Op option (1 Player walks, 1 Player shoots/uses abilites)

You are controlling a ship which is out on sea. Every night, monsters try to attack the ship.

Wave-Based -> Players can skill/upgrade between waves in a temporary Skill Tree

World events can happen such as:
- Part of the ship breaks (Cost to repair depends on the part, can be ignored but has penalty)
- Big Waves make you move in a way you don't want to
- Enemy Swarm

The player can choose where to go using a big map and decide whether the run is on difficulty:
- Easy
- Normal
- Hard

and the biome:
- Deep Ocean
- Shallow
- Coast
- Island in the middle of the map
  
Biomes and Difficulty influence World Events and resource gain.
Using won resources, the player can upgrade his Ship and buy new permanent abilities.

The player can sail from island to island. Once an island has been unlocked, it can be built on to passively exploit resources, encouraging exploration and adding a base-building approach.

The Player can also be updates seperately and journey the island himself to dispatch monsers in case there are any

Events can also happen in-between games that make the player have to win a specific challenge, else the settlement is destroyed

Some upgrades are locked not only behind a level (XP-based) but also behind resources

--> Possible to add the ability to upgrade mines if the player completes challenges there

Unlicke Brotato, rounds should not be forced to end but give the player to go further and further at exponentially decreasing benefits

## Art
Not Pixel Art but still on the simple Side

## Audio
Some generic beat that can be intensified based on health and spiced up by powers affected
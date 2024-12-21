
execute store result storage technik_wiki:tw_daten TW_Ziele int 1 run function technik_wiki:tw_punkteziele
execute store result score #TW_Ziele TW run data get storage technik_wiki:tw_daten TW_Ziele

function technik_wiki:tw_daten

scoreboard players set #TW_Start TW 0

# Der Spawnpunkt wird gesetzt.
setworldspawn 0 49 0
spawnpoint @a 0 49 0
worldborder set 3000
forceload add ~ ~

# Alle wichtigen Spielregeln werden gesetzt.
gamerule spawnRadius 0
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableRaids true
gamerule disableElytraMovementCheck true
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule keepInventory true
gamerule commandModificationBlockLimit 32768

# Planfunktionen
schedule function technik_wiki:tw_planen_3sek 1t replace
schedule function technik_wiki:tw_planen_11sek 2t replace
schedule function technik_wiki:tw_planen_20min 3t replace


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
gamerule respawn_radius 0
gamerule show_advancement_messages false
gamerule command_block_output false
gamerule raids true
gamerule elytra_movement_check true
gamerule advance_time false
gamerule advance_weather false
gamerule immediate_respawn true
gamerule spawn_phantoms false
gamerule spawn_patrols false
gamerule spawn_wandering_traders false
gamerule keep_inventory true
gamerule max_block_modifications 32768

# Planfunktionen
schedule function technik_wiki:tw_planen_3sek 1t replace
schedule function technik_wiki:tw_planen_11sek 2t replace
schedule function technik_wiki:tw_planen_20min 3t replace

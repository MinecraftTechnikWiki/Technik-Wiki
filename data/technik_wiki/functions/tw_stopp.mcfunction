
schedule clear technik_wiki:tw_planen_3sek
schedule clear technik_wiki:tw_planen_11sek
schedule clear technik_wiki:tw_planen_20min

data remove storage technik_wiki:tw_daten TW_Erweitert
data remove storage technik_wiki:tw_daten TW_Info
data remove storage technik_wiki:tw_daten TW_Hilfe

scoreboard objectives remove TW
scoreboard objectives remove TW_Nummer
scoreboard objectives remove TW_Test
scoreboard objectives remove TW_Modus
scoreboard objectives remove TW_Zeit
scoreboard objectives remove TW_Drop
scoreboard objectives remove TW_Beitritt

kill @e[type=minecraft:marker,tag=TW_Nummer]

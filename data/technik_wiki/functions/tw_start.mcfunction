
data modify storage technik_wiki:tw_daten TW_Erweitert set value '["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","contents":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]'

data modify storage technik_wiki:tw_daten TW_Info set value '["",{"text":"[","color":"dark_gray"},{"text":"WELT-INFO","hoverEvent":{"action":"show_text","contents":{"translate":"Datenpaket aufgerufen"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]'

data modify storage technik_wiki:tw_daten TW_Hilfe set value '["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","contents":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"}]'

# Alle Punkte-Ziele.
scoreboard objectives add TW trigger ["Technik Wiki: ",{"text":"ID","bold":true}]
scoreboard objectives add TW_Nummer dummy ["Technik Wiki: ",{"text":"Nummer der Spieler","bold":true}]
scoreboard objectives add TW_Test dummy ["Technik Wiki: ",{"text":"Erfolg, Anzahl oder Daten","bold":true}]
scoreboard objectives add TW_Modus trigger ["Technik Wiki: ",{"text":"Spielmodus","bold":true}]
scoreboard objectives add TW_Zeit minecraft.custom:minecraft.time_since_rest ["Technik Wiki: ",{"text":"Spielzeit","bold":true}]
scoreboard objectives add TW_Drop minecraft.custom:minecraft.drop ["Technik Wiki: ",{"text":"Droppen von Gegenständen","bold":true}]
scoreboard objectives add TW_Beitritt minecraft.custom:minecraft.leave_game ["",{"text":"Beigetretene","bold":true}]

scoreboard players set #TW_Start TW 0
scoreboard players set #TW_Ziele TW 7

# Welten: 1 Redstone, 2 Schiene, 3 Mechanik
scoreboard players set #TW_Welt TW 0
execute if block 0 48 0 minecraft:orange_concrete_powder run scoreboard players set #TW_Welt TW 1
execute if block 0 48 0 minecraft:lime_concrete_powder run scoreboard players set #TW_Welt TW 2
execute if block 0 48 0 minecraft:light_blue_concrete_powder run scoreboard players set #TW_Welt TW 3

# Der Spawnpunkt wird gesetzt.
setworldspawn 0 49 0
spawnpoint @a 0 49 0
worldborder set 3000

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

# Planfunktionen
schedule function technik_wiki:tw_planen_3sek 1t replace
schedule function technik_wiki:tw_planen_11sek 2t replace
schedule function technik_wiki:tw_planen_20min 3t replace

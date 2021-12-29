
data modify storage technik_wiki:tw_daten TW_Befehl set from entity @e[type=minecraft:marker,tag=TW_Eingabe,limit=1] data.TW_Befehle[0]
data remove entity @e[type=minecraft:marker,tag=TW_Eingabe,limit=1] data.TW_Befehle[0]

execute if entity @s[tag=TW_Erweitert,scores={TW=1}] run function technik_wiki:tw_befehle_erweitert
execute if entity @s[scores={TW=1..2}] run function technik_wiki:tw_befehle_spiel
execute if entity @s[scores={TW=1..}] run function technik_wiki:tw_gruppe

tellraw @s[scores={TW=1}] ["",{"text":"Unbekannter Befehlsbuchbefehl ","color":"red"},{"storage":"technik_wiki:tw_daten","nbt":"TW_Befehl","underlined":true},{"text":". Tippe Hilfe ein, um eine Liste von Befehlsbuchbefehlen zu erhalten.","color":"red"}]

scoreboard players set @s[scores={TW=2..}] TW 1
execute store result score #TW_Anzahl TW run data get entity @e[type=minecraft:marker,tag=TW_Eingabe,limit=1] data.TW_Befehle
execute if score #TW_Anzahl TW matches 1.. run function technik_wiki:tw_befehle_eingabe

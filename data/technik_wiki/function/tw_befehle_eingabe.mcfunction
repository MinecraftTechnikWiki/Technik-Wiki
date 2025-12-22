
data modify storage technik_wiki:tw_daten TW_Befehl set from entity @n[type=minecraft:marker,tag=TW_Eingabe] data.TW_Befehle[0]
data remove entity @n[type=minecraft:marker,tag=TW_Eingabe] data.TW_Befehle[0]

execute if entity @s[scores={TW=1..}] if score #TW_Server TW matches 0 run data modify storage technik_wiki:tw_daten TW_Eingabe.Welt1 set value "overworld"
execute if entity @s[scores={TW=1..}] if score #TW_Server TW matches 0 run data modify storage technik_wiki:tw_daten TW_Eingabe.Welt2 set value "overworld"
execute if entity @s[scores={TW=1..}] if score #TW_Server TW matches 0 run data modify storage technik_wiki:tw_daten TW_Eingabe.Welt3 set value "overworld"

execute if entity @s[scores={TW=1..}] if score #TW_Server TW matches 1 run data modify storage technik_wiki:tw_daten TW_Eingabe.Welt1 set value "redstone_welt"
execute if entity @s[scores={TW=1..}] if score #TW_Server TW matches 1 run data modify storage technik_wiki:tw_daten TW_Eingabe.Welt2 set value "schienen_welt"
execute if entity @s[scores={TW=1..}] if score #TW_Server TW matches 1 run data modify storage technik_wiki:tw_daten TW_Eingabe.Welt3 set value "mechanik_welt"

execute if entity @s[tag=TW_Erweitert,scores={TW=1}] run function technik_wiki:tw_befehle_erweitert
execute if entity @s[scores={TW=1..2}] run function technik_wiki:tw_befehle_spiel with storage technik_wiki:tw_daten TW_Eingabe

data modify storage technik_wiki:tw_daten TW_Eingabe.Befehl set from storage technik_wiki:tw_daten TW_Befehl

execute if entity @s[scores={TW=1..}] store result score @s TW_Test run function technik_wiki:tw_technik with storage technik_wiki:tw_daten TW_Eingabe

tellraw @s[scores={TW=1}] ["",{text:"Unbekannter Befehlsbuchbefehl ",color:"red"},{storage:"technik_wiki:tw_daten",nbt:"TW_Befehl",underlined:true},{text:". Tippe Hilfe ein, um eine Liste von Befehlsbuchbefehlen zu erhalten.",color:"red"}]

scoreboard players set @s[scores={TW=2..}] TW 1
execute store result score #TW_Anzahl TW run data get entity @n[type=minecraft:marker,tag=TW_Eingabe] data.TW_Befehle
execute if score #TW_Anzahl TW matches 1.. run function technik_wiki:tw_befehle_eingabe

# Befehlsbuch muss gelöscht werden um es zu leeren.
item replace entity @s[tag=TW_Befehlsbuch] weapon.mainhand with minecraft:air
item replace entity @s[tag=TW_Befehlsbuch] weapon.mainhand with minecraft:writable_book[minecraft:lore=['"Tippe hier einen Befehl ein"','"(ohne Enter) und drücke"','"Fertig. Beispiel: Hilfe um"','"eine Übersicht über alle"','"eigens für diese Welt"','"geschaffenen (Vanilla)"','"Befehle zu erhalten"'],minecraft:custom_name='{"translate":"Befehlsbuch","color":"light_purple","italic":false}',minecraft:custom_data={TW_Befehlsbuch:true}]

# Markierer wird markiert.
execute at @s as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run tag @s add TW_Eingabe
execute store result score #TW_Anzahl TW run data get entity @e[type=minecraft:marker,tag=TW_Eingabe,limit=1] data.TW_Befehle

# Jeder Befehl der eingetippt wurde, wird in den Verlauf hinzugefügt.
execute as @e[type=minecraft:marker,tag=TW_Eingabe,limit=1] run data modify entity @s data.TW_Verlauf append from entity @s data.TW_Befehle[]

# Hat man mehr als 50 Einträge wird der erste Eintrag gelöscht.
execute as @e[type=minecraft:marker,tag=TW_Eingabe,limit=1] store result score @s TW_Test run data get entity @s data.TW_Verlauf
data remove entity @e[type=minecraft:marker,tag=TW_Eingabe,scores={TW_Test=51..},limit=1] data.TW_Verlauf[0]

function technik_wiki:tw_befehle_eingabe

data modify storage technik_wiki:tw_daten TW_Befehl set value ""

tag @e[type=minecraft:marker,tag=TW_Eingabe] remove TW_Eingabe

scoreboard players enable @s TW
scoreboard players set @s TW 0

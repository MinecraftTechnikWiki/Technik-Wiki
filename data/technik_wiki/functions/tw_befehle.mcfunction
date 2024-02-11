
item replace entity @s[tag=TW_Befehlsbuch] weapon.mainhand with minecraft:air
item replace entity @s[tag=TW_Befehlsbuch] weapon.mainhand with minecraft:writable_book{TW_Befehlsbuch:true,display:{Name:'{"translate":"Befehlsbuch","color":"light_purple","italic":false}',Lore:['"Tippe hier einen Befehl ein"','"(ohne Enter) und drücke"','"Fertig. Beispiel: Hilfe um"','"eine Übersicht über alle"','"eigens für diese Welt"','"geschaffenen (Vanilla)"','"Befehle zu erhalten"'] } }

execute at @s as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run tag @s add TW_Eingabe

execute store result score #TW_Anzahl TW run data get entity @e[type=minecraft:marker,tag=TW_Eingabe,limit=1] data.TW_Befehle

execute as @e[type=minecraft:marker,tag=TW_Eingabe,limit=1] run data modify entity @s data.TW_Verlauf append from entity @s data.TW_Befehle[]

function technik_wiki:tw_befehle_eingabe

data modify storage technik_wiki:tw_daten TW_Befehl set value ""

tag @e[type=minecraft:marker,tag=TW_Eingabe] remove TW_Eingabe

scoreboard players enable @s TW
scoreboard players set @s TW 0

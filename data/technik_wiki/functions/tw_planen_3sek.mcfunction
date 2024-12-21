
schedule function technik_wiki:tw_planen_3sek 3s replace

execute as @a[tag=!TW_Nummer] run function technik_wiki:tw_nummer

execute as @a store result score @s TW_Test run clear @s minecraft:writable_book[minecraft:custom_data={TW_Befehlsbuch:true}] 0
clear @a[scores={TW_Test=2..}] minecraft:writable_book[minecraft:custom_data={TW_Befehlsbuch:true}]
execute as @a unless entity @s[scores={TW_Test=1}] run give @s minecraft:writable_book[minecraft:lore=['"Tippe hier einen Befehl ein"','"(ohne Enter) und drücke"','"Fertig. Beispiel: Hilfe um"','"eine Übersicht über alle"','"eigens für diese Welt"','"geschaffenen (Vanilla)"','"Befehle zu erhalten"'],minecraft:custom_name='{"translate":"Befehlsbuch","color":"light_purple","italic":false}',minecraft:custom_data={TW_Befehlsbuch:true}]

# Willkommen
execute if entity @p[tag=!TW_Willkommen] run scoreboard players add Spieler TW_Beitritt 1
execute if score Spieler TW_Beitritt matches 2.. run scoreboard objectives setdisplay sidebar TW_Beitritt
execute if score Spieler TW_Beitritt matches 2.. run advancement grant @a[advancements={technik_wiki:tw_mehrspieler=false}] only technik_wiki:tw_mehrspieler
execute if entity @p[tag=!TW_Willkommen] as @a run tellraw @s ["",{"translate":"Wir begrüßen","color":"yellow","bold":true }," ",{"selector":"@s[tag=!TW_Willkommen]","color":"green","underlined":true}]
execute as @p[tag=!TW_Willkommen] at @s store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Begrüßung"
tag @p[tag=!TW_Willkommen] add TW_Willkommen

# Neuling auf der Welt
tellraw @a[tag=!TW_Kein_Beitritt,scores={TW_Beitritt=1..}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Info","interpret":true},{"translate":"Dein Inventar wurde gelöscht und du wurdest zum Startpunkt zurück teleportiert.","color":"yellow","bold":true}]
clear @a[tag=!TW_Kein_Beitritt,scores={TW_Beitritt=1..}]
execute as @a[scores={TW_Beitritt=1..}] at @s store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Startzeit"
execute as @a[tag=!TW_Kein_Beitritt,scores={TW_Beitritt=1..}] at @s store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Startpunkt"
team leave @a[team=!,tag=!TW_Kein_Beitritt,scores={TW_Beitritt=1..}]
gamemode creative @a[gamemode=!creative,tag=!TW_Kein_Beitritt,scores={TW_Beitritt=1..}]
execute as @a[gamemode=spectator,tag=TW_Kein_Beitritt,scores={TW_Beitritt=1..}] at @s store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Zuschauer"
scoreboard players set @a[scores={TW_Beitritt=1..}] TW_Beitritt 0

# Portal
execute at @e[type=minecraft:armor_stand,tag=TW_Portal] run particle minecraft:portal ~ ~1 ~ 0 1 0 0.7 35 force @a[distance=..15]
execute as @a at @s store success score @s TW_Test if entity @e[distance=..2,type=minecraft:armor_stand,tag=TW_Portal]
scoreboard players set @a[scores={TW_Test=1}] TW_Test 2
execute as @a[scores={TW_Test=2}] at @s if block ~ ~-1 ~ minecraft:diamond_block store success score @s TW_Test run teleport @s -80 83 113
execute as @a[scores={TW_Test=2}] at @s if block ~ ~-1 ~ minecraft:gold_block store success score @s TW_Test run teleport @s 0 54 -56
execute as @a[scores={TW_Test=1}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 10 1 1
effect give @a[scores={TW_Test=1}] minecraft:nausea 6 1 true

# Welt-Portale
execute if score #TW_Server TW matches 1 run scoreboard players set @a TW_Test 0
execute if score #TW_Server TW matches 1 as @a at @s[distance=..1,x=-113,y=83,z=80] unless dimension technik_wiki:redstone_welt in technik_wiki:redstone_welt store success score @s TW_Test run teleport @s -113 83 80 ~ ~
execute if score #TW_Server TW matches 1 as @a at @s[distance=..1,x=-80,y=83,z=47] unless dimension technik_wiki:schienen_welt in technik_wiki:schienen_welt store success score @s TW_Test run teleport @s -80 83 47 ~ ~
execute if score #TW_Server TW matches 1 as @a at @s[distance=..1,x=-47,y=83,z=80] unless dimension technik_wiki:mechanik_welt in technik_wiki:mechanik_welt store success score @s TW_Test run teleport @s -47 83 80 ~ ~
execute if score #TW_Server TW matches 1 run effect give @a[scores={TW_Test=1}] minecraft:nausea 6 1 true

# Wenn Zuschauer wieder in den Kreativmodus wechseln möchten und keine Nachricht im Chat dafür bekommen haben
execute as @a[distance=..3,x=0,y=49,z=0,gamemode=spectator] at @s store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Kreativ"

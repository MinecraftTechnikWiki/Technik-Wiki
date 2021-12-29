
tag @a[nbt={SelectedItem:{tag:{TW_Befehlsbuch:true} } }] add TW_Befehlsbuch

execute as @a[tag=TW_Befehlsbuch] if data entity @s SelectedItem.tag.pages at @s store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append from entity @p SelectedItem.tag.pages[]

execute as @a[scores={TW=1..}] run function technik_wiki:tw_befehle
tag @a[tag=TW_Befehlsbuch] remove TW_Befehlsbuch

# Buch auf den Boden werfen und zum Startpunkt teleportiert werden
execute as @a[scores={TW_Drop=1..}] at @s if entity @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:writable_book",tag:{TW_Befehlsbuch:true} } }] store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Startpunkt"
execute at @a[scores={TW_Drop=1..}] run kill @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:writable_book",tag:{TW_Befehlsbuch:true} } }]
scoreboard players set @a[scores={TW_Drop=1..,TW=1}] TW_Drop 0

# Abenteuer am Spawn
gamemode adventure @a[distance=..99,x=0,y=49,z=0,gamemode=!adventure,tag=!TW_Erweitert]

# Knopf auf Boden
execute as @a at @s store success score @s TW_Test run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:oak_button[face=floor,powered=false] replace minecraft:oak_button[face=floor,powered=true]
execute as @a[scores={TW_Test=1}] at @s store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Startpunkt"

# TNT
execute at @a[tag=TW_Erweitert,gamemode=!spectator] run tag @e[distance=..50,type=minecraft:tnt] add TW_TNT
execute as @a at @s if entity @e[distance=..25,type=minecraft:tnt,tag=!TW_TNT] run tellraw @s ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Info","interpret":true},{"translate":"TNT wird entfernt, wenn kein erweiterter Spieler in der Nähe ist!","color":"red","bold":true}]
kill @e[type=minecraft:tnt,tag=!TW_TNT]

# Spieler die nicht Erweitert sind dürfen bestimmte Gegenstände nicht nutzen
execute as @a[tag=!TW_Erweitert] store success score @s TW_Test run clear @s #technik_wiki:tw_verboten
tellraw @a[tag=!TW_Erweitert,scores={TW_Test=1}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Info","interpret":true},{"translate":"Diesen Gegenstand darf man nicht bei sich tragen!","color":"red","bold":true}]

# Spielmodus ändern
execute as @a[gamemode=spectator,scores={TW_Modus=1}] store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Kreativ"
execute as @a[gamemode=spectator,scores={TW_Modus=2}] store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Abenteuer"
execute as @a[gamemode=spectator,scores={TW_Modus=3}] store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Überleben"
scoreboard players set @a[scores={TW_Modus=1..}] TW_Modus 0

# Symbol für Technik-Gruppen
execute at @e[type=minecraft:item,tag=TW_Zentrierung] run particle minecraft:witch ~ ~ ~ 0 0 0 0.1 10 force @a[distance=..15,tag=TW_Erweitert]
execute as @e[type=minecraft:item,tag=TW_Zentrierung] at @s align xyz run teleport @s ~0.5 ~-1 ~0.5
execute as @e[type=minecraft:item,tag=TW_Zentrierung,nbt={OnGround:true}] run data merge entity @s {NoGravity:true,Tags:["TW_Symbol","TW_Entfernen"],Motion:[0.0d,0.0d,0.0d]}
execute at @a[tag=TW_Drop,scores={TW_Drop=1..}] run kill @e[distance=..1,type=minecraft:item,tag=TW_Symbol,sort=nearest,limit=1]
execute at @a[tag=TW_Drop,scores={TW_Drop=1..}] run data merge entity @e[distance=..3,type=minecraft:item,sort=nearest,limit=1] {Tags:["TW_Symbol","TW_Entfernen","TW_Zentrierung"],Age:-32768s,PickupDelay:32767s}
scoreboard players set @a[tag=TW_Drop,scores={TW_Drop=1..}] TW_Drop 0

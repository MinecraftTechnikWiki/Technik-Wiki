# Copyright by Nethonos

# Wenn Zuschauer wieder in den Kreativmodus wechseln möchten und keine Nachricht im Chat dafür bekommen haben
replaceitem entity @s[x=0,y=49,z=0,distance=..3,gamemode=spectator] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Kreativ"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }

execute store result score #TW_Datentypen TW run scoreboard objectives list
execute if score #TW_Datentypen TW matches ..6 run function technik_wiki:tw_laden
execute if score #TW_Datentypen TW matches 8.. run scoreboard players add #TW_VielTechnikEingeschaltet TW 1
execute if score #TW_Datentypen TW matches 8.. if score #TW_VielTechnikEingeschaltet TW matches 2000 run tellraw @a ["",{"translate":"Bitte vergiss nicht die Techniken wieder auszuschalten, um Leistung zu sparen.","color":"yellow"}]
execute if score #TW_Datentypen TW matches 8.. if score #TW_VielTechnikEingeschaltet TW matches 16000.. run scoreboard players set #TW_VielTechnikEingeschaltet TW 0

# Willkommen
execute if entity @s[tag=!TW_Willkommen] run scoreboard players add Spieler TW_Beitritt 1
execute if score Spieler TW_Beitritt matches 2.. run scoreboard objectives setdisplay sidebar TW_Beitritt
execute if score Spieler TW_Beitritt matches 2.. run advancement grant @s[advancements={technik_wiki:tw_mehrspieler=false}] only technik_wiki:tw_mehrspieler
execute if entity @s[tag=!TW_Willkommen] run tellraw @a ["",{"translate":"Wir begrüßen","color":"yellow","bold":true }," ",{"selector":"@s[tag=!TW_Willkommen]","color":"green","underlined":true}]
replaceitem entity @s[tag=!TW_Willkommen] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Startpunkt","/Begrüßung"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }
tag @s[tag=!TW_Willkommen] add TW_Willkommen

# Wiederholungen nach einer bestimmten Zeit
advancement grant @s[scores={TW_Zeit=500},advancements={technik_wiki:tw_technik_wiki=false}] only technik_wiki:tw_technik_wiki
execute if score #TW_Welt TW matches 1 run replaceitem entity @s[tag=!TW_Kein_Hinweis,scores={TW_Zeit=1000}] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Redstone-Welt"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }
execute if score #TW_Welt TW matches 2 run replaceitem entity @s[tag=!TW_Kein_Hinweis,scores={TW_Zeit=1000}] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Schienen-Welt"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }
execute if score #TW_Welt TW matches 3 run replaceitem entity @s[tag=!TW_Kein_Hinweis,scores={TW_Zeit=1000}] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Mechanik-Welt"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }
replaceitem entity @s[gamemode=spectator,tag=TW_Erweitert,scores={TW_Zeit=1000}] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Zuschauer"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }
replaceitem entity @s[tag=TW_Nachtsicht,scores={TW_Zeit=2000}] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Nachtsicht"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }
replaceitem entity @s[scores={TW_Zeit=12000..}] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Startzeit"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }
scoreboard players enable @s[tag=TW_Kein_Buch,scores={TW_Zeit=12000..}] TW_Spielmodus
scoreboard players set @s[tag=TW_Kein_Buch,scores={TW_Zeit=12000..}] TW_Zeit 0

# Erweitert mit Eichenholzknopf
tellraw @s[tag=TW_Erweitert,tag=!TW_Holzknopf,nbt={Inventory:[{id:"minecraft:oak_button"}]}] ["",{"translate":"Holzknöpfe werden für die Teleporter verwendet, bitte verwende andere Knöpfe!","color":"red"}]
tag @s[tag=TW_Erweitert,tag=!TW_Holzknopf,nbt={Inventory:[{id:"minecraft:oak_button"}]}] add TW_Holzknopf
tag @s[tag=TW_Erweitert,tag=TW_Holzknopf,nbt=!{Inventory:[{id:"minecraft:oak_button"}]}] remove TW_Holzknopf

# Neuling auf der Welt
clear @s[tag=!TW_Kein_Beitritt,scores={TW_Beitritt=..1}]
replaceitem entity @s[scores={TW_Beitritt=..1}] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Startzeit"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }
replaceitem entity @s[tag=!TW_Kein_Beitritt,scores={TW_Beitritt=..1}] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Startzeit","/Startpunkt"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }
team leave @s[team=!,tag=!TW_Kein_Beitritt,scores={TW_Beitritt=..1}]
gamemode creative @s[gamemode=!creative,tag=!TW_Kein_Beitritt,scores={TW_Beitritt=..1}]
replaceitem entity @s[gamemode=spectator,tag=TW_Kein_Beitritt,scores={TW_Beitritt=..1}] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Zuschauer"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }
scoreboard players enable @s[tag=TW_Kein_Buch,scores={TW_Beitritt=..1}] TW_Spielmodus
scoreboard players reset @s[scores={TW_Beitritt=..1}] TW_Beitritt

# Buch auf den Boden werfen und zum Startpunkt teleportiert werden
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book",tag:{TW_Befehlsbuch:true} } }] run replaceitem entity @s[tag=TW_Wurf,distance=..2] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Startpunkt"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }
execute at @s run kill @e[type=minecraft:item,distance=..3,nbt={Item:{id:"minecraft:writable_book",tag:{TW_Befehlsbuch:true} } }]

# Engelsflügel
replaceitem entity @s[tag=TW_Engel,nbt=!{Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{TW_Elytren:true} }]}] armor.chest minecraft:elytra{TW_Elytren:true,display:{Name:"{\"text\":\"Engelsflügel\",\"color\":\"light_purple\",\"italic\":false}"},AttributeModifiers:[{AttributeName:"generic.luck",Amount:1024.0d,Name:"Engel",Operation:0,UUIDLeast:1,UUIDMost:5,Slot:"chest"},{AttributeName:"generic.knockbackResistance",Amount:1.0d,Name:"Engel",Operation:0,UUIDLeast:1,UUIDMost:5,Slot:"chest"},{AttributeName:"generic.movementSpeed",Amount:1024.0d,Name:"Engel",Operation:2,UUIDLeast:1,UUIDMost:5,Slot:"chest"},{AttributeName:"generic.maxHealth",Amount:1024.0d,Name:"Engel",Operation:0,UUIDLeast:1,UUIDMost:5,Slot:"chest"},{AttributeName:"generic.attackSpeed",Amount:1024.0d,Name:"Engel",Operation:0,UUIDLeast:1,UUIDMost:5,Slot:"chest"},{AttributeName:"generic.attackDamage",Amount:2048.0d,Name:"Engel",Operation:0,UUIDLeast:1,UUIDMost:5,Slot:"chest"},{AttributeName:"generic.armor",Amount:30.0d,Name:"Engel",Operation:0,UUIDLeast:1,UUIDMost:5,Slot:"chest"}],Enchentmants:[{id:"minecraft:protection",lvl:32767s},{id:"minecraft:feather_falling",lvl:32767s},{id:"minecraft:respiration",lvl:500s},{id:"minecraft:aqua_affinity",lvl:32767s},{id:"minecraft:thorns",lvl:32767s},{id:"minecraft:depth_strider",lvl:100s},{id:"minecraft:unbreaking",lvl:32767s},{id:"minecraft:mending",lvl:32767s}],Unbreakable:true,HideFlags:7}

# Deutschland-, Österreich- und Schweizflagge
replaceitem entity @s[tag=TW_DEU,nbt=!{Inventory:[{Slot:103b,id:"minecraft:red_banner",tag:{TW_DEU:true} }]}] armor.head minecraft:red_banner{TW_DEU:true,display:{Name:"{\"text\":\"Deutschlandflagge\",\"color\":\"light_purple\",\"italic\":false}"},BlockEntityTag:{Patterns:[{Pattern:"rs",Color:4},{Pattern:"ls",Color:15}]} }
replaceitem entity @s[tag=TW_AUT,nbt=!{Inventory:[{Slot:103b,id:"minecraft:white_banner",tag:{TW_AUT:true} }]}] armor.head minecraft:white_banner{TW_AUT:true,display:{Name:"{\"text\":\"Österreichflagge\",\"color\":\"light_purple\",\"italic\":false}"},BlockEntityTag:{Patterns:[{Pattern:"ls",Color:14},{Pattern:"rs",Color:14}]} }
replaceitem entity @s[tag=TW_CHE,nbt=!{Inventory:[{Slot:103b,id:"minecraft:red_banner",tag:{TW_CHE:true} }]}] armor.head minecraft:red_banner{TW_CHE:true,display:{Name:"{\"text\":\"Schweizflagge\",\"color\":\"light_purple\",\"italic\":false}"},BlockEntityTag:{Patterns:[{Pattern:"cs",Color:0},{Pattern:"ms",Color:0},{Pattern:"bo",Color:14},{Pattern:"ts",Color:14},{Pattern:"bs",Color:14}]} }

# Symbol für Technikgruppen
execute at @s[tag=TW_Gegenstand,scores={TW_Gegenstand=1..}] run data merge entity @e[type=minecraft:item,distance=..3,sort=nearest,limit=1] {Tags:["TW_Symbol","TW_Entfernen","TW_Zentrierung"],Age:-32768s,PickupDelay:32767s}
scoreboard players set @s[tag=TW_Gegenstand,scores={TW_Gegenstand=1..}] TW_Gegenstand 0
execute at @e[type=minecraft:item,tag=TW_Zentrierung] run particle minecraft:witch ~ ~ ~ 0 0 0 0.1 10 force @s[tag=TW_Erweitert]
execute as @e[type=minecraft:item,tag=TW_Zentrierung] at @s align xz positioned ~0.5 ~ ~0.5 run teleport @s ~ ~ ~
tag @e[type=minecraft:item,tag=TW_Zentrierung,nbt={OnGround:true}] remove TW_Zentrierung

# Spieler die nicht Erweitert sind dürfen bestimmte Gegenstände nicht nutzen
execute if entity @s[tag=!TW_Erweitert] store success score @s TW_Erfolg run clear @s #technik_wiki:tw_verboten
tellraw @s[tag=!TW_Erweitert,scores={TW_Erfolg=1..}] ["",{"translate":"Diesen Gegenstand darf man nicht bei sich tragen!","color":"red","bold":true}]

# Loren, Boote und TNT werden gelöscht
execute at @e[type=minecraft:minecart] if block ~ ~-1 ~ minecraft:sandstone run tellraw @s[distance=..25] ["",{"translate":"Loren auf Sandstein werden entfernt!","color":"red"}]
execute as @e[type=minecraft:minecart] at @s if block ~ ~-1 ~ minecraft:sandstone run kill @s
execute at @e[type=minecraft:boat] if block ~ ~-1 ~ minecraft:sandstone run tellraw @s[distance=..25] ["",{"translate":"Boote auf Sandstein werden entfernt!","color":"red"}]
execute as @e[type=minecraft:boat] at @s if block ~ ~-1 ~ minecraft:sandstone run kill @s
execute at @s[tag=TW_Erweitert,gamemode=!spectator] run tag @e[type=minecraft:tnt,tag=!TW_Explosion,distance=..50] add TW_Explosion
execute at @e[type=minecraft:tnt,tag=!TW_Explosion] run tellraw @s[distance=..25] ["",{"translate":"TNT wird entfernt, wenn kein erweiterter Spieler in der Nähe ist!","color":"red"}]
kill @e[type=minecraft:tnt,tag=!TW_Explosion]
replaceitem entity @s[x=0,y=49,z=0,distance=..99,gamemode=!adventure,tag=!TW_Erweitert] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Abenteuer"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }

# Kein Befehlsbuch
execute if entity @s[tag=TW_Kein_Buch] store result score @s TW_Erfolg run clear @s minecraft:writable_book{TW_Befehlsbuch:true}
tellraw @s[tag=TW_Kein_Buch,tag=TW_Erweitert,scores={TW_Erfolg=1}] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","color":"gold","bold":"true"},{"text":"] ","color":"dark_gray"},{"translate":"Das Befehlsbuch wurde entfernt. Klicke auf 'Befehlsbuch' oder gelange zum Startpunkt in die Mitte dieser Welt zurück um es zurück zu erhalten.","color":"gold"},"\n",{"translate":"Befehlsbuch","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/trigger TW_Spielmodus set 4"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"translate":"Erhalte das Befehlsbuch zurück","color":"green"}]} } }]
execute if entity @p[tag=TW_Kein_Buch,tag=TW_Erweitert] run gamerule commandBlockOutput false
scoreboard players set @s[x=0,y=49,z=0,distance=..3,tag=TW_Kein_Buch] TW_Spielmodus 4

# Spielmodus ändern
replaceitem entity @s[gamemode=spectator,scores={TW_Spielmodus=1}] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Kreativ"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }
replaceitem entity @s[gamemode=spectator,scores={TW_Spielmodus=2}] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Abenteuer"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }
replaceitem entity @s[gamemode=spectator,scores={TW_Spielmodus=3}] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Überleben"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }
tag @s[tag=TW_Kein_Buch,scores={TW_Spielmodus=4}] remove TW_Kein_Buch
scoreboard players set @s[scores={TW_Spielmodus=1..}] TW_Spielmodus 0

# Portal
execute at @e[type=minecraft:armor_stand,tag=TW_Portal] run particle minecraft:portal ~ ~1 ~ 0 1 0 0.7 35 force @s[distance=..15]
execute as @e[type=minecraft:armor_stand,tag=TW_Portal] at @s as @p[distance=..2,tag=!TW_Portal] at @s if block ~ ~-1 ~ minecraft:diamond_block run scoreboard players set @s TW_Portal 1
execute as @e[type=minecraft:armor_stand,tag=TW_Portal] at @s as @p[distance=..2,tag=!TW_Portal] at @s if block ~ ~-1 ~ minecraft:diamond_block run tag @s add TW_Portal
execute as @e[type=minecraft:armor_stand,tag=TW_Portal] at @s as @p[distance=..2,tag=TW_Portal,scores={TW_Portal=1}] at @s if block ~ ~-1 ~ minecraft:diamond_block run teleport @s -80 81 111
execute as @e[type=minecraft:armor_stand,tag=TW_Portal] at @s as @p[distance=..2,tag=!TW_Portal] at @s if block ~ ~-1 ~ minecraft:gold_block run scoreboard players set @s TW_Portal 2
execute as @e[type=minecraft:armor_stand,tag=TW_Portal] at @s as @p[distance=..2,tag=!TW_Portal] at @s if block ~ ~-1 ~ minecraft:gold_block run tag @s add TW_Portal
execute as @e[type=minecraft:armor_stand,tag=TW_Portal] at @s as @p[distance=..2,tag=TW_Portal,scores={TW_Portal=2}] at @s if block ~ ~-1 ~ minecraft:gold_block run teleport @s 0 49 -38
execute at @e[type=minecraft:armor_stand,tag=TW_Portal] run playsound minecraft:entity.endermen.teleport hostile @p[distance=..2,scores={TW_Portal=1}] ~ ~ ~ 10 1
execute at @e[type=minecraft:armor_stand,tag=TW_Portal] run effect give @p[distance=..2,scores={TW_Portal=1..}] minecraft:nausea 6 1 true
scoreboard players reset @s[scores={TW_Portal=1..}] TW_Portal
execute at @e[type=minecraft:armor_stand,tag=TW_Portal] run tag @p[distance=3..5] remove TW_Portal

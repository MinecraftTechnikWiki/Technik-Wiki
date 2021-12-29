
schedule function technik_wiki:tw_planen_11sek 11s replace

# Fortschritt
advancement grant @a[advancements={technik_wiki:tw_technik_wiki=false}] only technik_wiki:tw_technik_wiki

# Loren, Boote und TNT werden gelöscht
execute as @e[type=minecraft:minecart,tag=] at @s if block ~ ~-1 ~ minecraft:sandstone run tag @s add TW_Beseitigen
execute as @e[type=minecraft:boat,tag=] at @s if block ~ ~-1 ~ minecraft:sandstone run tag @s add TW_Beseitigen
execute as @a at @s if entity @e[distance=..25,tag=TW_Beseitigen] run tellraw @a[distance=..25] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Info","interpret":true},{"translate":"Boote oder Loren auf Sandstein werden entfernt!","color":"red","bold":true}]
kill @e[tag=TW_Beseitigen]

# Erweitert mit Eichenholzknopf
tag @a[nbt={Inventory:[{id:"minecraft:oak_button"}]}] add TW_Eichenknopf
tellraw @a[tag=TW_Erweitert,tag=!TW_Holzknopf,tag=TW_Eichenknopf] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Info","interpret":true},{"translate":"Eichenholzknöpfe werden für die Teleporter verwendet, bitte verwende andere Knöpfe!","color":"red","bold":true}]
tag @a[tag=TW_Erweitert,tag=!TW_Holzknopf,tag=TW_Eichenknopf] add TW_Holzknopf
tag @a[tag=TW_Erweitert,tag=TW_Holzknopf,tag=!TW_Eichenknopf] remove TW_Holzknopf
tag @a[tag=TW_Eichenknopf] remove TW_Eichenknopf

# Deutschland-, Österreich- und Schweizflagge
clear @a #minecraft:banners{TW_Alle:true}
item replace entity @a[tag=TW_DEU] armor.head with minecraft:red_banner{TW_Alle:true,TW_DEU:true,display:{Name:'{"text":"Deutschlandflagge","color":"light_purple","italic":false}'},BlockEntityTag:{Patterns:[{Pattern:"rs",Color:4},{Pattern:"ls",Color:15}]} }
item replace entity @a[tag=TW_AUT] armor.head with minecraft:white_banner{TW_Alle:true,TW_AUT:true,display:{Name:'{"text":"Österreichflagge","color":"light_purple","italic":false}'},BlockEntityTag:{Patterns:[{Pattern:"ls",Color:14},{Pattern:"rs",Color:14}]} }
item replace entity @a[tag=TW_CHE] armor.head with minecraft:red_banner{TW_Alle:true,TW_CHE:true,display:{Name:'{"text":"Schweizflagge","color":"light_purple","italic":false}'},BlockEntityTag:{Patterns:[{Pattern:"cs",Color:0},{Pattern:"ms",Color:0},{Pattern:"bo",Color:14},{Pattern:"ts",Color:14},{Pattern:"bs",Color:14}]} }

# Engelsflügel
clear @a minecraft:elytra{TW_Elytren:true}
item replace entity @a[tag=TW_Engel] armor.chest with minecraft:elytra{TW_Elytren:true,display:{Name:'{"text":"Engelsflügel","color":"light_purple","italic":false}'},AttributeModifiers:[{AttributeName:"minecraft:generic.luck",Amount:1024.0d,Name:"Engel",Operation:0,UUID:[I;1,1,1,5],Slot:"chest"},{AttributeName:"minecraft:generic.knockback_resistance",Amount:1.0d,Name:"Engel",Operation:0,UUID:[I;1,1,1,5],Slot:"chest"},{AttributeName:"minecraft:generic.movement_speed",Amount:1024.0d,Name:"Engel",Operation:2,UUID:[I;1,1,1,5],Slot:"chest"},{AttributeName:"minecraft:generic.max_health",Amount:1024.0d,Name:"Engel",Operation:0,UUID:[I;1,1,1,5],Slot:"chest"},{AttributeName:"minecraft:generic.attack_speed",Amount:1024.0d,Name:"Engel",Operation:0,UUID:[I;1,1,1,5],Slot:"chest"},{AttributeName:"minecraft:generic.attack_damage",Amount:2048.0d,Name:"Engel",Operation:0,UUID:[I;1,1,1,5],Slot:"chest"},{AttributeName:"minecraft:generic.armor",Amount:30.0d,Name:"Engel",Operation:0,UUID:[I;1,1,1,5],Slot:"chest"}],Enchentmants:[{id:"minecraft:protection",lvl:32767s},{id:"minecraft:feather_falling",lvl:32767s},{id:"minecraft:respiration",lvl:500s},{id:"minecraft:aqua_affinity",lvl:32767s},{id:"minecraft:thorns",lvl:32767s},{id:"minecraft:depth_strider",lvl:100s},{id:"minecraft:unbreaking",lvl:32767s},{id:"minecraft:mending",lvl:32767s}],Unbreakable:true,HideFlags:7}

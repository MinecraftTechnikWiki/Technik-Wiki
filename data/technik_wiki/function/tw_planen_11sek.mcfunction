
schedule function technik_wiki:tw_planen_11sek 11s replace

# Falls der Spieler keinen zugeordneten Markierer hat, muss er erneut eine Nummer bekommen
execute as @a[tag=TW_Nummer] at @s store result score @s TW_Test as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run scoreboard players set @p TW_Test 1
tag @a[tag=TW_Nummer,scores={TW_Test=0}] remove TW_Nummer

execute as @a[tag=TW_Nummer] unless score @s TW_Nummer matches 1.. run tag @s remove TW_Nummer

# Fortschritt
advancement grant @a[advancements={technik_wiki:tw_technik_wiki=false}] only technik_wiki:tw_technik_wiki

# Loren, Boote und TNT werden gelöscht
execute as @e[type=minecraft:minecart,tag=] at @s if block ~ ~-1 ~ minecraft:sandstone run tag @s add TW_Beseitigen
execute as @e[type=#minecraft:boat,tag=] at @s if block ~ ~-1 ~ minecraft:sandstone run tag @s add TW_Beseitigen
execute as @a at @s if entity @e[distance=..25,tag=TW_Beseitigen] run tellraw @a[distance=..25] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Info",interpret:true},{translate:"Boote oder Loren auf Sandstein werden entfernt!",color:"red",bold:true}]
kill @e[tag=TW_Beseitigen]

# Erweitert mit Eichenholzknopf
tag @a[nbt={Inventory:[{id:"minecraft:oak_button"}]}] add TW_Eichenknopf
tellraw @a[tag=TW_Erweitert,tag=!TW_Holzknopf,tag=TW_Eichenknopf] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Info",interpret:true},{translate:"Eichenholzknöpfe werden für die Teleporter verwendet, bitte verwende andere Knöpfe!",color:"red",bold:true}]
tag @a[tag=TW_Erweitert,tag=!TW_Holzknopf,tag=TW_Eichenknopf] add TW_Holzknopf
tag @a[tag=TW_Erweitert,tag=TW_Holzknopf,tag=!TW_Eichenknopf] remove TW_Holzknopf
tag @a[tag=TW_Eichenknopf] remove TW_Eichenknopf

# Deutschland-, Österreich- und Schweizflagge
clear @a #minecraft:banners[minecraft:custom_data~{TW_Alle:true}]
item replace entity @a[tag=TW_DEU] armor.head with minecraft:red_banner[minecraft:custom_name={text:"Deutschlandflagge",color:"light_purple",italic:false},minecraft:custom_data={TW_Alle:true,TW_DEU:true},minecraft:banner_patterns=[{color:"yellow",pattern:"minecraft:stripe_right"},{color:"black",pattern:"minecraft:stripe_left"}] ]
item replace entity @a[tag=TW_AUT] armor.head with minecraft:white_banner[minecraft:custom_name={text:"Österreichflagge",color:"light_purple",italic:false},minecraft:custom_data={TW_Alle:true,TW_AUT:true},minecraft:banner_patterns=[{color:"red",pattern:"minecraft:stripe_left"},{color:"red",pattern:"minecraft:stripe_right"}] ]
item replace entity @a[tag=TW_CHE] armor.head with minecraft:red_banner[minecraft:custom_name={text:"Schweizflagge",color:"light_purple",italic:false},minecraft:custom_data={TW_Alle:true,TW_CHE:true},minecraft:banner_patterns=[{color:"white",pattern:"minecraft:stripe_center"},{color:"white",pattern:"minecraft:stripe_middle"},{color:"red",pattern:"minecraft:border"},{color:"red",pattern:"minecraft:stripe_top"},{color:"red",pattern:"minecraft:stripe_bottom"}] ]

# Engelsflügel
clear @a minecraft:elytra[minecraft:custom_data~{TW_Elytren:true}]
item replace entity @a[tag=TW_Engel] armor.chest with minecraft:elytra[minecraft:attribute_modifiers=[{amount:1024.0d,operation:"add_value",slot:"chest",type:"minecraft:luck",id:"technik_wiki:tw_engel"},{amount:1.0d,operation:"add_value",slot:"chest",type:"minecraft:knockback_resistance",id:"technik_wiki:tw_engel"},{amount:1024.0d,operation:"add_multiplied_total",slot:"chest",type:"minecraft:movement_speed",id:"technik_wiki:tw_engel"},{amount:1024.0d,operation:"add_value",slot:"chest",type:"minecraft:max_health",id:"technik_wiki:tw_engel"},{amount:1024.0d,operation:"add_value",slot:"chest",type:"minecraft:attack_speed",id:"technik_wiki:tw_engel"},{amount:2048.0d,operation:"add_value",slot:"chest",type:"minecraft:attack_damage",id:"technik_wiki:tw_engel"},{amount:30.0d,operation:"add_value",slot:"chest",type:"minecraft:armor",id:"technik_wiki:tw_engel"}],minecraft:enchantments={"minecraft:aqua_affinity":255,"minecraft:depth_strider":255,"minecraft:feather_falling":255,"minecraft:mending":255,"minecraft:protection":255,"minecraft:respiration":255,"minecraft:thorns":255,"minecraft:unbreaking":255},minecraft:unbreakable={},minecraft:tooltip_display={hidden_components:["minecraft:attribute_modifiers","minecraft:unbreakable"]},minecraft:custom_name={text:"Engelsflügel",color:"light_purple",italic:false},minecraft:custom_data={TW_Elytren:true}]

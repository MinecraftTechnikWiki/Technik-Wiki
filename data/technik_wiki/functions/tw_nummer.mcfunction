
summon minecraft:marker 0 30 0 {CustomName:'{"text":"Befehle","color":"gold","bold":true}',Tags:["TW_Nummer","TW_Neu"],data:{TW_Befehle:[]} }

execute if score @s TW_Nummer = @s TW_Nummer run scoreboard players operation @e[type=minecraft:marker,tag=TW_Nummer,tag=TW_Neu,limit=1] TW_Nummer = @s TW_Nummer

execute unless score @s TW_Nummer = @s TW_Nummer store result score @s TW_Nummer store result score @e[type=minecraft:marker,tag=TW_Nummer,tag=TW_Neu,limit=1] TW_Nummer run scoreboard players add #TW_Nummer TW_Nummer 1

data modify entity @e[type=minecraft:marker,tag=TW_Neu,limit=1] data.TW_UUID set from entity @s UUID

tag @e[type=minecraft:marker,tag=TW_Neu,limit=1] remove TW_Neu

effect give @s minecraft:saturation infinite 255 true

scoreboard players enable @s TW

tag @s add TW_Nummer

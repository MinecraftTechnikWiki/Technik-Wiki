
summon minecraft:marker 0 30 0 {Tags:["TW_Nummer","TW_Neu"],data:{TW_Befehle:[]}}

execute store result score @s TW_Nummer store result score @e[type=minecraft:marker,tag=TW_Neu,limit=1] TW_Nummer run scoreboard players add #TW_Nummer TW_Nummer 1

tag @e[type=minecraft:marker,tag=TW_Neu,limit=1] remove TW_Neu

scoreboard players enable @s TW

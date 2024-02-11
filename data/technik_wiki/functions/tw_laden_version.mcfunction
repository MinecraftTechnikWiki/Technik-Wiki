
summon minecraft:marker -32 90 97 {Rotation:[0.0f,0.0f],Tags:["TW_Voll","TW_Ziffer","TW_Versionsnummer"]}
summon minecraft:marker -100 90 -33 {Rotation:[90.0f,0.0f],Tags:["TW_Voll","TW_Ziffer","TW_Versionsnummer"]}
summon minecraft:marker 33 90 -97 {Rotation:[180.0f,0.0f],Tags:["TW_Voll","TW_Ziffer","TW_Versionsnummer"]}
summon minecraft:marker 100 90 31 {Rotation:[270.0f,0.0f],Tags:["TW_Voll","TW_Ziffer","TW_Versionsnummer"]}

execute at @e[type=minecraft:marker,tag=TW_Voll] run summon minecraft:marker ^-2 ^ ^ {Tags:["TW_Punkt","TW_Versionsnummer"]}
execute at @e[type=minecraft:marker,tag=TW_Voll] run summon minecraft:marker ^-8 ^ ^ {Tags:["TW_Erste","TW_Ziffer","TW_Versionsnummer"]}
execute at @e[type=minecraft:marker,tag=TW_Voll] run summon minecraft:marker ^-14 ^ ^ {Tags:["TW_Zweite","TW_Ziffer","TW_Versionsnummer"]}
execute at @e[type=minecraft:marker,tag=TW_Voll] run summon minecraft:marker ^-21 ^ ^ {Tags:["TW_Zeichen","TW_Versionsnummer"]}

execute at @e[type=minecraft:marker,tag=TW_Voll] as @e[distance=..25,type=minecraft:marker,tag=TW_Versionsnummer,tag=!TW_Voll] positioned as @s run teleport @s ~ ~ ~ ~ ~

execute at @e[type=minecraft:marker,tag=TW_Versionsnummer] run fill ^ ^ ^ ^6 ^10 ^2 minecraft:air replace

scoreboard players set #TW_ZEHN TW 10
execute store result score #TW_Erste TW run scoreboard players operation #TW_Zweite TW = #TW_Version TW
scoreboard players operation #TW_Erste TW /= #TW_ZEHN TW
scoreboard players operation #TW_Zweite TW %= #TW_ZEHN TW

scoreboard players set @e[type=minecraft:marker,tag=TW_Ziffer,tag=TW_Voll] TW 1
scoreboard players operation @e[type=minecraft:marker,tag=TW_Ziffer,tag=TW_Erste] TW = #TW_Erste TW
scoreboard players operation @e[type=minecraft:marker,tag=TW_Ziffer,tag=TW_Zweite] TW = #TW_Zweite TW

execute if score #TW_Erste TW matches 0 run kill @e[type=minecraft:marker,tag=TW_Versionsnummer,tag=TW_Erste]
execute if score #TW_Erste TW matches 0 as @e[type=minecraft:marker,tag=TW_Versionsnummer] unless entity @s[tag=!TW_Zweite,tag=!TW_Zeichen] at @s run teleport @s ^6 ^ ^

scoreboard players reset #TW_ZEHN TW
scoreboard players reset #TW_Erste TW
scoreboard players reset #TW_Zweite TW

execute at @e[type=minecraft:marker,tag=TW_Versionsnummer] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",mirror:"NONE",posY:1} replace

execute at @e[type=minecraft:marker,tag=TW_Ziffer,scores={TW=0}] run data merge block ~ ~ ~ {name:"technik_wiki:tw_ziffer_0"}
execute at @e[type=minecraft:marker,tag=TW_Ziffer,scores={TW=1}] run data merge block ~ ~ ~ {name:"technik_wiki:tw_ziffer_1"}
execute at @e[type=minecraft:marker,tag=TW_Ziffer,scores={TW=2}] run data merge block ~ ~ ~ {name:"technik_wiki:tw_ziffer_2"}
execute at @e[type=minecraft:marker,tag=TW_Ziffer,scores={TW=3}] run data merge block ~ ~ ~ {name:"technik_wiki:tw_ziffer_3"}
execute at @e[type=minecraft:marker,tag=TW_Ziffer,scores={TW=4}] run data merge block ~ ~ ~ {name:"technik_wiki:tw_ziffer_4"}
execute at @e[type=minecraft:marker,tag=TW_Ziffer,scores={TW=5}] run data merge block ~ ~ ~ {name:"technik_wiki:tw_ziffer_5"}
execute at @e[type=minecraft:marker,tag=TW_Ziffer,scores={TW=6}] run data merge block ~ ~ ~ {name:"technik_wiki:tw_ziffer_6"}
execute at @e[type=minecraft:marker,tag=TW_Ziffer,scores={TW=7}] run data merge block ~ ~ ~ {name:"technik_wiki:tw_ziffer_7"}
execute at @e[type=minecraft:marker,tag=TW_Ziffer,scores={TW=8}] run data merge block ~ ~ ~ {name:"technik_wiki:tw_ziffer_8"}
execute at @e[type=minecraft:marker,tag=TW_Ziffer,scores={TW=9}] run data merge block ~ ~ ~ {name:"technik_wiki:tw_ziffer_9"}

execute at @e[type=minecraft:marker,tag=TW_Versionsnummer,y_rotation=0.0] run data merge block ~ ~ ~ {rotation:"NONE"}
execute at @e[type=minecraft:marker,tag=TW_Versionsnummer,y_rotation=90.0] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90"}
execute at @e[type=minecraft:marker,tag=TW_Versionsnummer,y_rotation=180.0] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180"}
execute at @e[type=minecraft:marker,tag=TW_Versionsnummer,y_rotation=270.0] run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90"}

execute at @e[type=minecraft:marker,tag=TW_Punkt] run data merge block ~ ~ ~ {name:"technik_wiki:tw_punkt"}

execute at @e[type=minecraft:marker,tag=TW_Zeichen] run data merge block ~ ~ ~ {name:"technik_wiki:tw_zeichen_a"}

execute at @e[type=minecraft:marker,tag=TW_Versionsnummer] run setblock ^1 ^ ^ minecraft:redstone_block replace
execute at @e[type=minecraft:marker,tag=TW_Versionsnummer] run fill ^ ^ ^ ^1 ^ ^ minecraft:air replace

kill @e[type=minecraft:marker,tag=TW_Versionsnummer]

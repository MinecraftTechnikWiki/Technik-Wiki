
tellraw @s ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Hilfe",interpret:true},{score:{name:"TW_Verlauf",objective:"TW"} },{storage:"technik_wiki:tw_daten",nbt:"TW_Verlauf[0]"}]

data remove storage technik_wiki:tw_daten TW_Verlauf[0]

scoreboard players remove #TW_Verlauf TW 1
execute if score #TW_Verlauf TW matches 1.. run function technik_wiki:tw_befehle_verlauf

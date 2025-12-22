
data remove storage technik_wiki:tw_daten TW_Technik

$execute store success score @s TW_Test run data modify storage technik_wiki:tw_daten TW_Technik set from storage technik_wiki:tw_daten TW_Techniken[{Technik:"$(Befehl)"}]

$execute if score @s TW_Test matches 0 run data modify storage technik_wiki:tw_daten TW_Technik set from storage technik_wiki:tw_daten TW_Techniken[{Nummer:"$(Befehl)"}]

execute if score #TW_Server TW matches 0 run data modify storage technik_wiki:tw_daten TW_Technik.Welt set value "overworld"

execute if data storage technik_wiki:tw_daten TW_Technik run function technik_wiki:tw_technik_wiki with storage technik_wiki:tw_daten TW_Technik

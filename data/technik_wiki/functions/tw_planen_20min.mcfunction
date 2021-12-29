
schedule function technik_wiki:tw_planen_20min 1201s replace

execute as @a[gamemode=spectator,tag=TW_Erweitert] at @s store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Zuschauer"

execute if score #TW_Welt TW matches 1 if score #TW_Start TW matches 1 as @a[gamemode=!spectator,tag=!TW_Kein_Hinweis] at @s store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Redstone-Welt"
execute if score #TW_Welt TW matches 2 if score #TW_Start TW matches 1 as @a[gamemode=!spectator,tag=!TW_Kein_Hinweis] at @s store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Schienen-Welt"
execute if score #TW_Welt TW matches 3 if score #TW_Start TW matches 1 as @a[gamemode=!spectator,tag=!TW_Kein_Hinweis] at @s store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Mechanik-Welt"

scoreboard players set #TW_Start TW 1

execute as @a[tag=TW_Nachtsicht] at @s store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Nachtsicht"

execute store result score #TW_Ziele_Aktuell TW run scoreboard objectives list
execute if score #TW_Ziele_Aktuell TW < #TW_Ziele TW run function technik_wiki:tw_start
execute if score #TW_Ziele_Aktuell TW > #TW_Ziele TW run tellraw @a ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Info","interpret":true},{"translate":"Bitte vergiss nicht die noch eingeschalteten Techniken wieder auszuschalten, um Leistung zu sparen.","color":"yellow","bold":true}]

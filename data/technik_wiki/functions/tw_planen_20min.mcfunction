
schedule function technik_wiki:tw_planen_20min 1201s replace

# Falls mehr als ein Markierer pro Spieler existiert, werden alle entfernt
scoreboard players set @a[tag=TW_Nummer] TW_Test 0
execute as @a[tag=TW_Nummer] at @s as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run scoreboard players add @p TW_Test 1
execute as @a[tag=TW_Nummer,scores={TW_Test=2..}] at @s as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run kill @s
tag @a[tag=TW_Nummer,scores={TW_Test=2..}] remove TW_Nummer

execute as @e[type=minecraft:marker,tag=TW_Nummer] unless score @s TW_Nummer matches 1.. run kill @s

# Zuschauer-Menü
execute as @a[gamemode=spectator,tag=TW_Erweitert] at @s store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Zuschauer"

# Download-Welt-Hinweis
execute if score #TW_Start TW matches 1 if score #TW_Server TW matches 0 if score #TW_Welt TW matches 1 as @a[gamemode=!spectator,tag=!TW_Kein_Hinweis] at @s store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Redstone-Welt"
execute if score #TW_Start TW matches 1 if score #TW_Server TW matches 0 if score #TW_Welt TW matches 2 as @a[gamemode=!spectator,tag=!TW_Kein_Hinweis] at @s store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Schienen-Welt"
execute if score #TW_Start TW matches 1 if score #TW_Server TW matches 0 if score #TW_Welt TW matches 3 as @a[gamemode=!spectator,tag=!TW_Kein_Hinweis] at @s store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Mechanik-Welt"

execute if score #TW_Start TW matches 1 if score #TW_Server TW matches 1 as @a[gamemode=!spectator,tag=!TW_Kein_Hinweis] at @s if dimension technik_wiki:redstone_welt store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Redstone-Welt"
execute if score #TW_Start TW matches 1 if score #TW_Server TW matches 1 as @a[gamemode=!spectator,tag=!TW_Kein_Hinweis] at @s if dimension technik_wiki:schienen_welt store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Schienen-Welt"
execute if score #TW_Start TW matches 1 if score #TW_Server TW matches 1 as @a[gamemode=!spectator,tag=!TW_Kein_Hinweis] at @s if dimension technik_wiki:mechanik_welt store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Mechanik-Welt"

scoreboard players set #TW_Start TW 1

# Nachtsicht-Auffrischung
execute as @a[tag=TW_Nachtsicht] at @s store success score @s TW as @e[type=minecraft:marker,tag=TW_Nummer] if score @s TW_Nummer = @p TW_Nummer run data modify entity @s data.TW_Befehle append value "Nachtsicht"

# Erinnerung
execute store result score #TW_Test TW run scoreboard objectives list
execute if score #TW_Test TW < #TW_Ziele TW run function technik_wiki:tw_punkteziele
execute if score #TW_Test TW > #TW_Ziele TW run tellraw @a ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Info","interpret":true},{"translate":"Bitte vergiss nicht die noch eingeschalteten Techniken wieder auszuschalten, um Leistung zu sparen.","color":"yellow","bold":true}]

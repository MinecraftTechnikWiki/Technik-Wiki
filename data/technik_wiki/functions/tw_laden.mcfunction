# Nachricht für erfolgreiches laden der Funktion
tellraw @a ["",{"translate":"Technik-Wiki-Funktionen wurden geladen","color":"green","bold":true}]

# Alle Punktestand-Ziele
scoreboard objectives add TW minecraft.used:minecraft.writable_book ["Technik Wiki: ",{"text":"ID","bold":true}]

scoreboard objectives add TW_Erfolg dummy ["Technik Wiki: ",{"text":"Erfolg des Befehls","bold":true}]
scoreboard objectives add TW_Spielmodus trigger ["Technik Wiki: ",{"text":"Spielmodus","bold":true}]
scoreboard objectives add TW_Zeit minecraft.custom:minecraft.time_since_rest ["Technik Wiki: ",{"text":"Lebenszeit","bold":true}]
scoreboard objectives add TW_Gegenstand minecraft.custom:minecraft.drop ["Technik Wiki: ",{"text":"Technik-Gruppen-Symbol","bold":true}]
scoreboard objectives add TW_Portal dummy ["Technik Wiki: ",{"text":"Portal","bold":true}]

scoreboard objectives add TW_Beitritt minecraft.custom:minecraft.leave_game ["",{"text":"Beigetretene","bold":true}]

# Welten: 1 Redstone, 2 Schiene, 3 Mechanik
scoreboard players set #TW_Welt TW 0
execute if block 0 48 0 minecraft:orange_concrete_powder run scoreboard players set #TW_Welt TW 1
execute if block 0 48 0 minecraft:lime_concrete_powder run scoreboard players set #TW_Welt TW 2
execute if block 0 48 0 minecraft:light_blue_concrete_powder run scoreboard players set #TW_Welt TW 3

# Alle Spielregeln und Welteinstellungen
setworldspawn 0 49 0
gamerule spawnRadius 0
gamerule announceAdvancements false

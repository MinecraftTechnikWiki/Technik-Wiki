
scoreboard players set #TW_Daten TW 1

# Welt-Version
scoreboard players set #TW_Version TW 20

# Welten: 1 Redstone, 2 Schiene, 3 Mechanik
scoreboard players set #TW_Welt TW 0
execute if block 0 48 0 minecraft:orange_concrete_powder run scoreboard players set #TW_Welt TW 1
execute if block 0 48 0 minecraft:lime_concrete_powder run scoreboard players set #TW_Welt TW 2
execute if block 0 48 0 minecraft:light_blue_concrete_powder run scoreboard players set #TW_Welt TW 3

# Einzelspieler oder Server
scoreboard players set #TW_Server TW 0
execute in technik_wiki:redstone_welt if dimension technik_wiki:redstone_welt run scoreboard players set #TW_Server TW 1
execute in technik_wiki:schienen_welt if dimension technik_wiki:schienen_welt run scoreboard players set #TW_Server TW 1
execute in technik_wiki:mechanik_welt if dimension technik_wiki:mechanik_welt run scoreboard players set #TW_Server TW 1

# Welt-Info in Chat-Nachrichten
data modify storage technik_wiki:tw_daten TW_Welt_Info set value {}

# Erweitert-Info im Chat
data modify storage technik_wiki:tw_daten TW_Erweitert set value '["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","contents":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]'

# Welt-Info im Chat
data modify storage technik_wiki:tw_daten TW_Info set value '["",{"text":"[","color":"dark_gray"},{"text":"WELT-INFO","hoverEvent":{"action":"show_text","contents":{"translate":"Datenpaket aufgerufen"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]'

# Hilfe-Info im Chat
data modify storage technik_wiki:tw_daten TW_Hilfe set value '["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","contents":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"}]'

# Techniken mit IDs, Wiki-Links und Koordinaten
data modify storage technik_wiki:tw_daten TW_Techniken set value []
function technik_wiki:tw_daten_redstone
function technik_wiki:tw_daten_schienen
function technik_wiki:tw_daten_mechanik

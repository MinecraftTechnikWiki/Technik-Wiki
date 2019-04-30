# Copyright by Nethonos

scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Hilfe"]} }]}] TW 2
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/h"]} }]}] TW 2
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/help"]} }]}] TW 2
tellraw @s[scores={TW=2}] ["",{"text":"\n--- ","color":"dark_green"},{"translate":"Befehlsbuch-Hilfeseite","color":"dark_green"},{"text":" (/Erweitert) ---\n\n","color":"dark_green"}]


tellraw @s[scores={TW=2}] ["",{"text":"/Zeitraffer /zr #2 #3","bold":true},{"text":" -- Spielgeschwindigkeit wird erhöht."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Zeitraffer"]} }]}] TW 30001
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/zr"]} }]}] TW 30001
tellraw @s[scores={TW=30001}] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Zufallstickgeschwindigkeit erhöht","color":"yellow"}]
execute if entity @s[scores={TW=30001}] run gamerule randomTickSpeed 100
execute if entity @s[scores={TW=30001},nbt={Inventory:[{Slot:8b,tag:{pages:["#2"]} }]}] run gamerule randomTickSpeed 1000
execute if entity @s[scores={TW=30001},nbt={Inventory:[{Slot:8b,tag:{pages:["#3"]} }]}] run gamerule randomTickSpeed 10000


tellraw @s[scores={TW=2}] ["",{"text":"/!Zeitraffer /!zr","bold":true},{"text":" -- Spielgeschwindigkeit wird normalisiert."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!Zeitraffer"]} }]}] TW 30002
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!zr"]} }]}] TW 30002
tellraw @s[scores={TW=30002}] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Zufallstickgeschwindigkeit: 3","color":"green"}]
execute if entity @s[scores={TW=30002}] run gamerule randomTickSpeed 3


tellraw @s[scores={TW=2}] ["",{"text":"/!Befehlsbuch /!bu","bold":true},{"text":" -- Spielmodus: Kein Befehlsbuch"}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!Befehlsbuch"]} }]}] TW 30003
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!bu"]} }]}] TW 30003
tag @s[scores={TW=30003}] add TW_Kein_Buch
execute if entity @s[scores={TW=30003},tag=TW_Kein_Buch] at @s run spreadplayers ~ ~ 0 1 false @s
replaceitem entity @s[scores={TW=30003}] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Startzeit","/Schaltfläche"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }


tellraw @s[scores={TW=2}] ["",{"text":"/Überleben /ü","bold":true},{"text":" -- Spielmodus: Überleben"}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Überleben"]} }]}] TW 30004
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/ü"]} }]}] TW 30004
gamemode survival @s[scores={TW=30004},gamemode=!survival]


tellraw @s[scores={TW=2}] ["",{"text":"/Zuschauer /z","bold":true},{"text":" -- Spielmodus: Zuschauer"}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Zuschauer"]} }]}] TW 30005
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/z"]} }]}] TW 30005
tellraw @s[scores={TW=30005}] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Du befindest dich im Zuschauermodus. Klicke auf einen der Spielmodi um zurück in den Spielmodus deiner Wahl zu kommen oder gelange zum Startpunkt in die Mitte der Welt, für den Kreativmodus.","color":"gold"},"\n",{"text":"Kreativ","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/trigger TW_Spielmodus set 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Gehe in den Kreativmodus","color":"green"}]} } },"\n",{"text":"Abenteuer","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/trigger TW_Spielmodus set 2"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Gehe in den Abenteuermodus","color":"green"}]} } },"\n",{"text":"Überleben","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/trigger TW_Spielmodus set 3"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Gehe in den Überlebensmodus","color":"green"}]} } }]
gamemode spectator @s[gamemode=!spectator,scores={TW=30005}]
replaceitem entity @s[scores={TW=30005}] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Startzeit","/!Befehl","/Schaltfläche","/Nachtsicht"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }


tellraw @s[scores={TW=2}] ["",{"text":"/Befehl /b","bold":true},{"text":" -- Spielregel: Befehlsblockausgabe ein."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Befehl"]} }]}] TW 30006
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/b"]} }]}] TW 30006
execute if entity @s[scores={TW=30006}] run gamerule commandBlockOutput true
execute if entity @s[scores={TW=30006}] run gamerule logAdminCommands true


tellraw @s[scores={TW=2}] ["",{"text":"/!Befehl /!b","bold":true},{"text":" -- Spielregel: Befehlsblockausgabe aus."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!Befehl"]} }]}] TW 30007
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!b"]} }]}] TW 30007
execute if entity @s[scores={TW=30007}] run gamerule commandBlockOutput false
execute if entity @s[scores={TW=30007}] run gamerule logAdminCommands false


tellraw @s[scores={TW=2}] ["",{"text":"/Sonnenstand /so #2","bold":true},{"text":" -- Sonnenstand wird um einen viertel Tag geändert."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Sonnenstand"]} }]}] TW 30008
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/so"]} }]}] TW 30008
tellraw @s[scores={TW=30008}] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Der Sonnenstand wurde geändert."}]
execute if entity @s[scores={TW=30008}] run time add 6000
execute if entity @s[scores={TW=30008},nbt={Inventory:[{Slot:8b,tag:{pages:["#2"]} }]}] run time add 6000


tellraw @s[scores={TW=2}] ["",{"text":"/Monster /mo","bold":true},{"text":" -- Monster werden eingeschaltet."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Monster"]} }]}] TW 30009
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/mo"]} }]}] TW 30009
tellraw @s[scores={TW=30009}] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Monster können nun spawnen","color":"red"}]
execute if entity @s[scores={TW=30009}] run difficulty normal
execute if entity @s[scores={TW=30009}] run gamerule doMobSpawning true


tellraw @s[scores={TW=2}] ["",{"text":"/!Monster /!mo","bold":true},{"text":" -- Monster werden ausgeschaltet."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!Monster"]} }]}] TW 30010
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!mo"]} }]}] TW 30010
tellraw @s[scores={TW=30010}] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Es können keine Monster spawnen","color":"green"}]
execute if entity @s[scores={TW=30010}] run difficulty easy
execute if entity @s[scores={TW=30010}] run gamerule doMobSpawning false


tellraw @s[scores={TW=2}] ["",{"text":"/Engel /el","bold":true},{"text":" -- Man schaltet extreme Elytren ein oder aus."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Engel"]} }]}] TW 30011
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/el"]} }]}] TW 30011
execute if entity @s[scores={TW=30011},tag=!TW_Engel] store success score @s TW_Erfolg run tag @s add TW_Engel
tellraw @s[scores={TW=30011,TW_Erfolg=1},tag=TW_Engel] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Du besitzt nun die Engelsflügel.","color":"green"}]
clear @s[scores={TW=30011,TW_Erfolg=0},tag=TW_Engel] minecraft:elytra{TW_Elytren:true}
tellraw @s[scores={TW=30011,TW_Erfolg=0},tag=TW_Engel] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Die Engelsflügel wurden entfernt.","color":"yellow"}]
tag @s[scores={TW=30011,TW_Erfolg=0},tag=TW_Engel] remove TW_Engel


tellraw @s[scores={TW=2}] ["",{"text":"/Willkommen /w","bold":true},{"text":" -- Man wird als neuer Besucher willkommen geheißen."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Willkommen"]} }]}] TW 30012
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/w"]} }]}] TW 30012
tag @s[scores={TW=30012}] remove TW_Willkommen


tellraw @s[scores={TW=2}] ["",{"text":"/!Willkommen /!w","bold":true},{"text":" -- Der Zähler der beigetretenen Spieler wird zurückgesetzt."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!Willkommen"]} }]}] TW 30013
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!w"]} }]}] TW 30013
execute if entity @s[scores={TW=30013}] run scoreboard players reset * TW_Beitritt
execute if entity @s[scores={TW=30013}] run scoreboard objectives setdisplay sidebar
tellraw @s[scores={TW=30013}] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Willkommenszähler zurückgesetzt!","color":"red"}]


tellraw @s[scores={TW=2}] ["",{"text":"/Schaltfläche /sf","bold":true},{"text":" -- Ermöglicht die Schaltflächen für manche Spielmodi."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Schaltfläche"]} }]}] TW 30014
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/sf"]} }]}] TW 30014
scoreboard players enable @s[scores={TW=30014}] TW_Spielmodus


tellraw @s[scores={TW=2}] ["",{"text":"/Nachtsicht /nt","bold":true},{"text":" -- Gibt dem Spieler den Effekt Nachtsicht."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Nachtsicht"]} }]}] TW 30015
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/nt"]} }]}] TW 30015
tellraw @s[scores={TW=30015},tag=!TW_Nachtsicht] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Die permanente Nachtsicht wurde aktiviert."}]
tag @s[scores={TW=30015},tag=!TW_Nachtsicht] add TW_Nachtsicht
effect give @s[scores={TW=30015}] minecraft:night_vision 600 255 true

tellraw @s[scores={TW=2}] ["",{"text":"/Befehle /be","bold":true},{"text":" -- Man erhält diverse Befehlsblöcke."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Befehle"]} }]}] TW 30016
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/be"]} }]}] TW 30016
execute if entity @s[scores={TW=30016}] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:command_block",Count:1b},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:repeating_command_block",Count:1b} },{id:"minecraft:item",Item:{id:"minecraft:chain_command_block",Count:1b} },{id:"minecraft:item",Item:{id:"minecraft:structure_block",Count:1b} },{id:"minecraft:item",Item:{id:"minecraft:structure_void",Count:1b} },{id:"minecraft:item",Item:{id:"minecraft:barrier",Count:1b} } ] }

tellraw @s[scores={TW=2}] ["",{"text":"/Redstone /re","bold":true},{"text":" -- Man erhält diverse Redstone-Elemente."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Redstone"]} }]}] TW 30017
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/re"]} }]}] TW 30017
execute if entity @s[scores={TW=30017}] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:redstone",Count:1b},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:repeater",Count:1b} },{id:"minecraft:item",Item:{id:"minecraft:comparator",Count:1b} },{id:"minecraft:item",Item:{id:"minecraft:redstone_torch",Count:1b} },{id:"minecraft:item",Item:{id:"minecraft:gold_block",Count:1b} },{id:"minecraft:item",Item:{id:"minecraft:iron_block",Count:1b} } ] }

tellraw @s[scores={TW=2}] ["",{"text":"/Schiene /sn","bold":true},{"text":" -- Man erhält diverse Schienen-Elemente."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Schiene"]} }]}] TW 30018
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/sn"]} }]}] TW 30018
execute if entity @s[scores={TW=30018}] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:rail",Count:1b},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:powered_rail",Count:1b} },{id:"minecraft:item",Item:{id:"minecraft:detector_rail",Count:1b} },{id:"minecraft:item",Item:{id:"minecraft:activator_rail",Count:1b} },{id:"minecraft:item",Item:{id:"minecraft:stone",Count:1b,Damage:5} },{id:"minecraft:item",Item:{id:"minecraft:coal_block",Count:1b} } ] }


tellraw @s[scores={TW=2}] ["",{"text":"/Drop /dp","bold":true},{"text":" -- Blöcke und Kreaturen droppen Gegenstände."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Drop"]} }]}] TW 30019
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/dp"]} }]}] TW 30019
tellraw @s[scores={TW=30019}] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Abgebaute Blöcke oder getötete Kreaturen können nun Gegenstände droppen.","color":"red"}]
execute if entity @s[scores={TW=30019}] run gamerule doTileDrops true
execute if entity @s[scores={TW=30019}] run gamerule doEntityDrops true
execute if entity @s[scores={TW=30019}] run gamerule doMobLoot true


tellraw @s[scores={TW=2}] ["",{"text":"/Entfernen /ent /lö","bold":true},{"text":" -- Entfernt verweilende Gegenstände oder Schriften."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Entfernen"]} }]}] TW 30020
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/ent"]} }]}] TW 30020
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/lö"]} }]}] TW 30020
execute if entity @s[scores={TW=30020}] at @s store success score @s TW_Erfolg run kill @e[tag=TW_Entfernen,distance=..3,sort=nearest,limit=1]
tellraw @s[scores={TW=30020,TW_Erfolg=1}] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Ein Objekt wurde erfolgreich gelöscht.","color":"yellow"}]
tellraw @s[scores={TW=30020,TW_Erfolg=0}] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Kein Objekt wurde gefunden.","color":"red"}]


tellraw @s[scores={TW=2}] ["",{"text":"/Schrift /st","bold":true},{"text":" -- Erzeugt eine selbstdefinierbare schwebende Schrift."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Schrift"]} }]}] TW 30021
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/st"]} }]}] TW 30021
execute if entity @s[scores={TW=30021}] at @s unless entity @e[distance=..3,type=minecraft:armor_stand,tag=TW_Schrift,sort=nearest,limit=1] run summon minecraft:armor_stand ~ ~1 ~ {Marker:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:"{\"text\":\"Technik+Nummer\"}",Tags:["TW_Schrift","TW_Entfernen"]}
tellraw @s[scores={TW=30021}] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Klicke hier, um der Technik einen Namen zu geben.","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Klick mich!"} },"clickEvent":{"action":"suggest_command","value":"/data merge entity @e[distance=..3,type=minecraft:armor_stand,tag=TW_Schrift,sort=nearest,limit=1] {CustomName:\"{\\\"text\\\":\\\"Technik+Nummer\\\"}\"}"} }]


tellraw @s[scores={TW=2}] ["",{"text":"/Plattform /pt #2","bold":true},{"text":" -- Teleporter-Plattform die bei Techniken steht, wird platziert."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Plattform"]} }]}] TW 30022
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/pt"]} }]}] TW 30022

execute as @s[y_rotation=-45..45,scores={TW=30022}] at @s rotated 90 0 align xyz run setblock ^3 ^ ^ minecraft:structure_block{mode:"LOAD",ignoreEntities:false,rotation:"CLOCKWISE_90",posX:2,posY:0,posZ:-2,name:"technik_wiki:tw_plattform_klein"} keep
execute as @s[y_rotation=45..135,scores={TW=30022}] at @s rotated 180 0 align xyz run setblock ^3 ^ ^ minecraft:structure_block{mode:"LOAD",ignoreEntities:false,rotation:"CLOCKWISE_180",posX:2,posY:0,posZ:2,name:"technik_wiki:tw_plattform_klein"} keep
execute as @s[y_rotation=135..-135,scores={TW=30022}] at @s rotated 270 0 align xyz run setblock ^3 ^ ^ minecraft:structure_block{mode:"LOAD",ignoreEntities:false,rotation:"COUNTERCLOCKWISE_90",posX:-2,posY:0,posZ:2,name:"technik_wiki:tw_plattform_klein"} keep
execute as @s[y_rotation=-135..-45,scores={TW=30022}] at @s rotated 0 0 align xyz run setblock ^3 ^ ^ minecraft:structure_block{mode:"LOAD",ignoreEntities:false,rotation:"NONE",posX:-2,posY:0,posZ:-2,name:"technik_wiki:tw_plattform_klein"} keep

execute as @s[y_rotation=-45..45,scores={TW=30022},nbt={Inventory:[{Slot:8b,tag:{pages:["#2"]} }]}] at @s rotated 90 0 align xyz run data merge block ^3 ^ ^ {posX:4,posZ:-2,name:"technik_wiki:tw_plattform"}
execute as @s[y_rotation=45..135,scores={TW=30022},nbt={Inventory:[{Slot:8b,tag:{pages:["#2"]} }]}] at @s rotated 180 0 align xyz run data merge block ^3 ^ ^ {posX:2,posZ:4,name:"technik_wiki:tw_plattform"}
execute as @s[y_rotation=135..-135,scores={TW=30022},nbt={Inventory:[{Slot:8b,tag:{pages:["#2"]} }]}] at @s rotated 270 0 align xyz run data merge block ^3 ^ ^ {posX:-4,posZ:2,name:"technik_wiki:tw_plattform"}
execute as @s[y_rotation=-135..-45,scores={TW=30022},nbt={Inventory:[{Slot:8b,tag:{pages:["#2"]} }]}] at @s rotated 0 0 align xyz run data merge block ^3 ^ ^ {posX:-2,posZ:-4,name:"technik_wiki:tw_plattform"}

execute as @s[scores={TW=30022}] at @s rotated ~90 0 align xyz run fill ^2 ^ ^-1 ^4 ^ ^1 minecraft:redstone_block replace minecraft:air


tellraw @s[scores={TW=2}] ["",{"text":"/Gegenstand /gd","bold":true},{"text":" -- Schaltet verweilende nicht aufhebende Gegenstände ein oder aus."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Gegenstand"]} }]}] TW 30023
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/gd"]} }]}] TW 30023
execute if entity @s[tag=!TW_Gegenstand,scores={TW=30023}] store success score @s TW_Erfolg run tag @s add TW_Gegenstand
tellraw @s[scores={TW=30023,TW_Erfolg=1}] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Ein geworfener beliebiger Gegenstand, der als Symbol für eine Technik-Gruppe stehen kann, wird nun nicht mehr verschwinden oder aufhebbar sein."}]
tag @s[tag=TW_Gegenstand,scores={TW=30023,TW_Erfolg=0}] remove TW_Gegenstand
tellraw @s[scores={TW=30023,TW_Erfolg=0}] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Gegenstände die nun geworfen werden, verweilen nun nicht mehr ewig."}]


tellraw @s[scores={TW=2}] ["",{"text":"/!Drop /!dp","bold":true},{"text":" -- Weder Blöcke noch Kreaturen droppen Gegenstände."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!Drop"]} }]}] TW 30024
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!dp"]} }]}] TW 30024
tellraw @s[scores={TW=30024}] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Abgebaute Blöcke oder getötete Kreaturen droppen nun keine Gegenstände."}]
execute if entity @s[scores={TW=30024}] run gamerule doTileDrops false
execute if entity @s[scores={TW=30024}] run gamerule doEntityDrops false
execute if entity @s[scores={TW=30024}] run gamerule doMobLoot false


tellraw @s[scores={TW=2}] ["",{"text":"/Rhytmus /rh","bold":true},{"text":" -- Stellt den Tag-Nacht-Rhytmus her"}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Rhythmus"]} }]}] TW 30025
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/rh"]} }]}] TW 30025
execute if entity @s[scores={TW=30025}] run gamerule doDaylightCycle true


tellraw @s[scores={TW=2}] ["",{"text":"/!Rhytmus /!rh","bold":true},{"text":" -- Lässt den Tag-Nacht-Rhytmus ausfallen"}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!Rhythmus"]} }]}] TW 30026
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!rh"]} }]}] TW 30026
execute if entity @s[scores={TW=30026}] run gamerule doDaylightCycle false
execute if entity @s[scores={TW=30026}] run time set noon


tellraw @s[scores={TW=2}] ["",{"text":"/Portal /pl","bold":true},{"text":" -- Erstellt an der aktuellen Position ein Portal"}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Portal"]} }]}] TW 30027
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/pl"]} }]}] TW 30027
execute if entity @s[scores={TW=30027}] at @s align xz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Marker:true,Invisible:true,NoGravity:true,Tags:["TW_Portal","TW_Entfernen"]}


tellraw @s[scores={TW=2}] ["",{"text":"/!Nachtsicht /!nt","bold":true},{"text":" -- Entfernt die permantente Nachtischt"}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!Nachtsicht"]} }]}] TW 30028
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!nt"]} }]}] TW 30028
tellraw @s[tag=TW_Nachtsicht,scores={TW=30028}] ["",{"text":"[","color":"dark_gray"},{"text":"ERWEITERT","hoverEvent":{"action":"show_text","value":{"translate":"Erweiterter Spielmodus"} },"color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Die permanente Nachtsicht wurde entfernt."}]
effect clear @s[tag=TW_Nachtsicht,scores={TW=30028}] minecraft:night_vision
tag @s[tag=TW_Nachtsicht,scores={TW=30028}] remove TW_Nachtsicht

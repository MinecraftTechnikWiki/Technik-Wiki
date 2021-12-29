
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Vorrichtungen"} run scoreboard players set @s TW 5000
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5000"} run scoreboard players set @s TW 5000
tellraw @s[scores={TW=5000}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Vorrichtungen","color":"yellow","bold":true,"extra":[{"text":" (5000)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Vorrichtungen"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Vorrichtungen"} },{"text":"'","bold":true}]

tellraw @s[scores={TW=5000}] ["",{"text":"Technik = ","color":"green","bold":true},{"text":"Kolben-Verlängerung","color":"yellow","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Technik"} },"clickEvent":{"action":"run_command","value":"/trigger TW set 5001"} },"\n",{"text":"Technik = ","color":"green","bold":true},{"text":"Blockupdate-Sensor","color":"yellow","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Technik"} },"clickEvent":{"action":"run_command","value":"/trigger TW set 5002"} } ]

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Kolben-Verlängerung"} run scoreboard players set @s TW 5001
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5001"} run scoreboard players set @s TW 5001
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5001}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Kolben-Verlängerung","color":"yellow","bold":true,"extra":[{"text":" (5001)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Kolben-Verlängerung"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Kolben-Verlängerung"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5001}] -261 27 251 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Blockupdate-Sensor"} run scoreboard players set @s TW 5002
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5002"} run scoreboard players set @s TW 5002
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5002}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Blockupdate-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5002)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Blockupdate-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Blockupdate-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5002}] -260 27 124 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Block-Sensor"} run scoreboard players set @s TW 5003
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5003"} run scoreboard players set @s TW 5003
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5003}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Block-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5003)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Block-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Block-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5003}] -260 27 60 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Drop-Sensor"} run scoreboard players set @s TW 5004
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5004"} run scoreboard players set @s TW 5004
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5004}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Drop-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5004)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Drop-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Drop-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5004}] -260 27 28 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Inventar-Sensor"} run scoreboard players set @s TW 5005
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5005"} run scoreboard players set @s TW 5005
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5005}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Inventar-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5005)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Inventar-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Inventar-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5005}] -260 27 -4 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Slot-Sensor"} run scoreboard players set @s TW 5011
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5011"} run scoreboard players set @s TW 5011
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5011}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Slot-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5011)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Slot-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Slot-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5011}] -260 27 -228 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Mülleimer"} run scoreboard players set @s TW 5006
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5006"} run scoreboard players set @s TW 5006
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5006}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Mülleimer","color":"yellow","bold":true,"extra":[{"text":" (5006)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Mülleimer"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Mülleimer"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5006}] -260 27 -68 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Objekt-Zähler"} run scoreboard players set @s TW 5007
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5007"} run scoreboard players set @s TW 5007
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5007}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Objekt-Zähler","color":"yellow","bold":true,"extra":[{"text":" (5007)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Objekt-Zähler"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Objekt-Zähler"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5007}] -292 27 -68 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Standort-Sensor"} run scoreboard players set @s TW 5008
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5008"} run scoreboard players set @s TW 5008
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5008}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Standort-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5008)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Standort-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Standort-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5008}] -260 27 -100 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Dimensions-Sensor"} run scoreboard players set @s TW 5017
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5017"} run scoreboard players set @s TW 5017
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5017}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Dimensions-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5017)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Dimensions-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Dimensions-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5017}] -292 27 60 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Chunk-Sensor"} run scoreboard players set @s TW 5020
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5020"} run scoreboard players set @s TW 5020
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5020}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Chunk-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5020)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Chunk-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Chunk-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5020}] -324 27 28 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Höhlen-Sensor"} run scoreboard players set @s TW 5021
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5021"} run scoreboard players set @s TW 5021
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5021}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Höhlen-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5021)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Höhlen-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Höhlen-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5021}] -324 27 60 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Biom-Sensor"} run scoreboard players set @s TW 5018
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5018"} run scoreboard players set @s TW 5018
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5018}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Biom-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5018)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Biom-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Biom-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5018}] -292 27 28 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Licht-Sensor"} run scoreboard players set @s TW 5019
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5019"} run scoreboard players set @s TW 5019
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5019}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Licht-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5019)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Licht-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Licht-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5019}] -292 27 -100 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Shiftklick-Sensor"} run scoreboard players set @s TW 5022
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5022"} run scoreboard players set @s TW 5022
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5022}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Shiftklick-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5022)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Shiftklick-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Shiftklick-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5022}] -292 27 -292 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Bewegungssensor"} run scoreboard players set @s TW 5009
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5009"} run scoreboard players set @s TW 5009
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5009}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Bewegungssensor","color":"yellow","bold":true,"extra":[{"text":" (5009)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Bewegungssensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Bewegungssensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5009}] -260 27 -132 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Koordinaten-Sensor"} run scoreboard players set @s TW 5023
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5023"} run scoreboard players set @s TW 5023
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5023}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Koordinaten-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5023)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Koordinaten-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Koordinaten-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5023}] -324 27 -132 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Blickwinkel-Sensor"} run scoreboard players set @s TW 5010
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5010"} run scoreboard players set @s TW 5010
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5010}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Blickwinkel-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5010)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Blickwinkel-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Blickwinkel-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5010}] -260 27 -196 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Sichtweiten-Sensor"} run scoreboard players set @s TW 5024
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5024"} run scoreboard players set @s TW 5024
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5024}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Sichtweiten-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5024)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Sichtweiten-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Sichtweiten-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5024}] -292 27 -196 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Entfernungs-Sensor"} run scoreboard players set @s TW 5025
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5025"} run scoreboard players set @s TW 5025
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5025}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Entfernungs-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5025)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Entfernungs-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Entfernungs-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5025}] -292 27 -228 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Sprachen-Sensor"} run scoreboard players set @s TW 5012
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5012"} run scoreboard players set @s TW 5012
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5012}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Sprachen-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5012)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Sprachen-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Sprachen-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5012}] -260 27 -260 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Versionen-Sensor"} run scoreboard players set @s TW 5013
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5013"} run scoreboard players set @s TW 5013
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5013}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Versionen-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5013)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Versionen-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Versionen-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5013}] -260 27 -292 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Spielbeitritt-Sensor"} run scoreboard players set @s TW 5026
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5026"} run scoreboard players set @s TW 5026
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5026}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Spielbeitritt-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5026)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Spielbeitritt-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Spielbeitritt-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5026}] -292 27 -324 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Server-Sensor"} run scoreboard players set @s TW 5014
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5014"} run scoreboard players set @s TW 5014
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5014}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Server-Sensor","color":"yellow","bold":true,"extra":[{"text":" (5014)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Server-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Server-Sensor"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5014}] -260 27 -324 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Dropgenerator"} run scoreboard players set @s TW 5015
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5015"} run scoreboard players set @s TW 5015
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5015}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Dropgenerator","color":"yellow","bold":true,"extra":[{"text":" (5015)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Dropgenerator"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Dropgenerator"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5015}] -260 27 -356 90 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Kugelgenerator"} run scoreboard players set @s TW 5016
execute if data storage technik_wiki:tw_daten {TW_Befehl:"5016"} run scoreboard players set @s TW 5016
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=5016}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Kugelgenerator","color":"yellow","bold":true,"extra":[{"text":" (5016)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Kugelgenerator"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Kugelgenerator"} },{"text":"'","bold":true}]
teleport @s[scores={TW=5016}] -260 27 -420 90 0


execute if data storage technik_wiki:tw_daten {TW_Befehl:"Systeme"} run scoreboard players set @s TW 13000
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13000"} run scoreboard players set @s TW 13000
tellraw @s[scores={TW=13000}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":" '","bold":true},{"text":"Systeme","color":"yellow","bold":true,"extra":[{"text":" (13000)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Systeme"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Systeme"} },{"text":"'","bold":true}]

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Mausklick-Sensor"} run scoreboard players set @s TW 13001
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13001"} run scoreboard players set @s TW 13001
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=13001}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Mausklick-Sensor","color":"yellow","extra":[{"text":" (13001)"}],"hoverEvent":{"action":"show_text","value":{"translate":"Mausklick-Sensor"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Mausklick-Sensor_(Befehle)"} },{"text":"'","bold":true}]
teleport @s[scores={TW=13001}] -253 27 -420 180 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Zeichen-Eingabe"} run scoreboard players set @s TW 13002
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13002"} run scoreboard players set @s TW 13002
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=13002}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Zeichen-Eingabe","color":"yellow","extra":[{"text":" (13002)"}],"hoverEvent":{"action":"show_text","value":{"translate":"Zeichen-Eingabe"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Zeichen-Eingabe_(Befehle)"} },{"text":"'","bold":true}]
teleport @s[scores={TW=13002}] -221 27 -420 180 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Hungerpunkte-System"} run scoreboard players set @s TW 13003
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13003"} run scoreboard players set @s TW 13003
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=13003}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Hungerpunkte-System","color":"yellow","extra":[{"text":" (13003)"}],"hoverEvent":{"action":"show_text","value":{"translate":"Hungerpunkte-System"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Hungerpunkte-System_(Befehle)"} },{"text":"'","bold":true}]
teleport @s[scores={TW=13003}] -189 27 -420 180 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Lebenspunkte-System"} run scoreboard players set @s TW 13004
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13004"} run scoreboard players set @s TW 13004
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=13004}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Lebenspunkte-System","color":"yellow","extra":[{"text":" (13004)"}],"hoverEvent":{"action":"show_text","value":{"translate":"Lebenspunkte-System"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Lebenspunkte-System_(Befehle)"} },{"text":"'","bold":true}]
teleport @s[scores={TW=13004}] -189 27 -452 180 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Werkzeug-System"} run scoreboard players set @s TW 13005
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13005"} run scoreboard players set @s TW 13005
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=13005}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Werkzeug-System","color":"yellow","extra":[{"text":" (13005)"}],"hoverEvent":{"action":"show_text","value":{"translate":"Werkzeug-System"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Werkzeug-System_(Befehle)"} },{"text":"'","bold":true}]
teleport @s[scores={TW=13005}] 35 27 -452 180 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Steinbruch-System"} run scoreboard players set @s TW 13006
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13006"} run scoreboard players set @s TW 13006
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=13006}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Steinbruch-System","color":"yellow","bold":true,"extra":[{"text":" (13006)"}],"hoverEvent":{"action":"show_text","contents":{"translate":"Steinbruch-System"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Steinbruch-System_(Befehle)"} },{"text":"'","bold":true}]
teleport @s[scores={TW=13006}] 387 27 -52 270 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Teleporter"} run scoreboard players set @s TW 13007
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13007"} run scoreboard players set @s TW 13007
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=13007}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Teleporter","color":"yellow","extra":[{"text":" (13007)"}],"hoverEvent":{"action":"show_text","value":{"translate":"Teleporter"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Teleporter_(Befehle)"} },{"text":"'","bold":true}]
teleport @s[scores={TW=13007}] -157 27 -420 180 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Kontrollpunkt-System"} run scoreboard players set @s TW 13008
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13008"} run scoreboard players set @s TW 13008
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=13008}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Kontrollpunkt-System","color":"yellow","extra":[{"text":" (13008)"}],"hoverEvent":{"action":"show_text","value":{"translate":"Kontrollpunkt-System"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Kontrollpunkt-System_(Befehle)"} },{"text":"'","bold":true}]
teleport @s[scores={TW=13008}] -93 27 -420 180 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Wegfindungssystem"} run scoreboard players set @s TW 13009
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13009"} run scoreboard players set @s TW 13009
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=13009}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Wegfindungssystem","color":"yellow","extra":[{"text":" (13009)"}],"hoverEvent":{"action":"show_text","value":{"translate":"Wegfindungssystem"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Wegfindungssystem_(Befehle)"} },{"text":"'","bold":true}]
teleport @s[scores={TW=13009}] -29 27 -452 180 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Befehle-System"} run scoreboard players set @s TW 13010
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13010"} run scoreboard players set @s TW 13010
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=13010}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Befehle-System","color":"yellow","extra":[{"text":" (13010)"}],"hoverEvent":{"action":"show_text","value":{"translate":"Befehle-System"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Befehle-System_(Befehle)"} },{"text":"'","bold":true}]
teleport @s[scores={TW=13010}] -29 27 -420 180 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Passwort-System"} run scoreboard players set @s TW 13014
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13014"} run scoreboard players set @s TW 13014
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=13014}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Passwort-System","color":"yellow","extra":[{"text":" (13014)"}],"hoverEvent":{"action":"show_text","value":{"translate":"Passwort-System"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Passwort-System_(Befehle)"} },{"text":"'","bold":true}]
teleport @s[scores={TW=13014}] -221 27 -452 180 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Wahl-System"} run scoreboard players set @s TW 13015
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13015"} run scoreboard players set @s TW 13015
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=13015}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Wahl-System","color":"yellow","extra":[{"text":" (13015)"}],"hoverEvent":{"action":"show_text","value":{"translate":"Wahl-System"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Wahl-System_(Befehle)"} },{"text":"'","bold":true}]
teleport @s[scores={TW=13015}] -221 27 -484 180 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Kamera-System"} run scoreboard players set @s TW 13017
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13017"} run scoreboard players set @s TW 13017
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=13017}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Kamera-System","color":"yellow","extra":[{"text":" (13017)"}],"hoverEvent":{"action":"show_text","value":{"translate":"Kamera-System"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Kamera-System_(Befehle)"} },{"text":"'","bold":true}]
teleport @s[scores={TW=13017}] -189 27 -484 180 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Sammel-System"} run scoreboard players set @s TW 13011
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13011"} run scoreboard players set @s TW 13011
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=13011}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Sammel-System","color":"yellow","extra":[{"text":" (13011)"}],"hoverEvent":{"action":"show_text","value":{"translate":"Sammel-System"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Sammel-System_(Befehle)"} },{"text":"'","bold":true}]
teleport @s[scores={TW=13011}] 3 27 -420 180 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Zonen-System"} run scoreboard players set @s TW 13012
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13012"} run scoreboard players set @s TW 13012
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=13012}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Zonen-System","color":"yellow","extra":[{"text":" (13012)"}],"hoverEvent":{"action":"show_text","value":{"translate":"Zonen-System"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Zonen-System_(Befehle)"} },{"text":"'","bold":true}]
teleport @s[scores={TW=13012}] 3 27 -452 180 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Auftrag-System"} run scoreboard players set @s TW 13013
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13013"} run scoreboard players set @s TW 13013
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=13013}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Auftrag-System","color":"yellow","extra":[{"text":" (13013)"}],"hoverEvent":{"action":"show_text","value":{"translate":"Auftrag-System"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Auftrag-System_(Befehle)"} },{"text":"'","bold":true}]
teleport @s[scores={TW=13013}] 644 27 -261 180 0

execute if data storage technik_wiki:tw_daten {TW_Befehl:"Gildenschlacht-Minispiel"} run scoreboard players set @s TW 13016
execute if data storage technik_wiki:tw_daten {TW_Befehl:"13016"} run scoreboard players set @s TW 13016
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=13016}] ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"Gildenschlacht-Minispiel","color":"yellow","extra":[{"text":" (13016)"}],"hoverEvent":{"action":"show_text","value":{"translate":"Gildenschlacht-Minispiel"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Gildenschlacht-Minispiel_(Befehle)"} },{"text":"'","bold":true}]
teleport @s[scores={TW=13016}] 228 27 -421 180 0

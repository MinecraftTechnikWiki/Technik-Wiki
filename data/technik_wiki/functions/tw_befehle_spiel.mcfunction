
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Hilfe"]}}]}] TW 2
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/h"]}}]}] TW 2
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/help"]}}]}] TW 2


tellraw @s[scores={TW=2}] ["",{"text":"\n--- ","color":"dark_green"},{"translate":"Befehlsbuch-Hilfeseite","color":"dark_green"},{"text":" (/Hilfe) ---\n\n","color":"dark_green"}]
tellraw @s[scores={TW=2}] ["",{"text":"/Hilfe /h /help","bold":true},{"text":" -- Gibt eine Liste aller möglichen Befehlsbuch-Befehle im Chat aus."}]
advancement grant @s[scores={TW=2},advancements={technik_wiki:tw_hilfe=false}] only technik_wiki:tw_hilfe


tellraw @s[scores={TW=2}] ["",{"text":"/Startpunkt /sr /spawn","bold":true},{"text":" -- Teleportiert den Spieler zum Startpunkt."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Startpunkt"]}}]}] TW 20001
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/sr"]}}]}] TW 20001
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/spawn"]}}]}] TW 20001
teleport @s[scores={TW=20001}] 0 49 0


tellraw @s[scores={TW=2}] ["",{"text":"/Erweitert /ew","bold":true},{"text":" -- Man erhält als Operator erweiterte Rechte."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Erweitert"]}}]}] TW 20002
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/ew"]}}]}] TW 20002
tellraw @s[scores={TW=20002}] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Klicke auf Erweitert um einen Befehl in der Chatleiste zu erhalten. Führe diesen als Operator aus und erhalte die erweiterten Rechte.","color":"gold"},"\n",{"text":"Erweitert","color":"yellow","bold":true,"clickEvent":{"action":"suggest_command","value":"/tag @s[tag=!TW_Erweitert] add TW_Erweitert"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Erhalte die erweiterten Rechte","color":"green"}]} } }]


tellraw @s[scores={TW=2}] ["",{"text":"/!Erweitert /!ew","bold":true},{"text":" -- Man entfernt die erweiterten Rechte."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!Erweitert"]}}]}] TW 20003
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!ew"]}}]}] TW 20003
tellraw @s[scores={TW=20003},tag=!TW_Erweitert] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Die erweiterten Rechte wurden dir bereits genommen.","color":"red"}]
tellraw @s[scores={TW=20003},tag=TW_Erweitert] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Erweiterte Rechte entfernt.","color":"yellow"}]
tag @s[scores={TW=20003},tag=TW_Erweitert] remove TW_Erweitert


tellraw @s[scores={TW=2}] ["",{"text":"/Version /v","bold":true},{"text":" -- Zeigt die Welt-Version an, in der man sich befindet."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Version"]}}]}] TW 20004
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/v"]}}]}] TW 20004
execute if score #TW_Welt TW matches 1 run tellraw @s[scores={TW=20004}] ["",{"text":"[","color":"dark_gray"},{"text":"VERSION","color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Redstone-Welt "},{"text":"1.16a","bold":true}]
execute if score #TW_Welt TW matches 2 run tellraw @s[scores={TW=20004}] ["",{"text":"[","color":"dark_gray"},{"text":"VERSION","color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Schienen-Welt "},{"text":"1.16a","bold":true}]
execute if score #TW_Welt TW matches 3 run tellraw @s[scores={TW=20004}] ["",{"text":"[","color":"dark_gray"},{"text":"VERSION","color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Mechanik-Welt "},{"text":"1.16a","bold":true}]


tellraw @s[scores={TW=2}] ["",{"text":"/Begrüßung /bg","bold":true},{"text":" -- Man sieht eine Titelnachricht und eine Rakete."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Begrüßung"]}}]}] TW 20005
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/bg"]}}]}] TW 20005
execute if score #TW_Welt TW matches 1 run title @s[scores={TW=20005}] title ["",{"text":"Willkommen!","color":"dark_red","bold":true}]
execute if score #TW_Welt TW matches 2 run title @s[scores={TW=20005}] title ["",{"text":"Willkommen!","color":"dark_green","bold":true}]
execute if score #TW_Welt TW matches 3 run title @s[scores={TW=20005}] title ["",{"text":"Willkommen!","color":"dark_blue","bold":true}]
execute if score #TW_Welt TW matches 1 run title @s[scores={TW=20005}] subtitle ["",{"text":"auf der REDSTONE-WELT","color":"white","bold":true,"underlined":true}]
execute if score #TW_Welt TW matches 2 run title @s[scores={TW=20005}] subtitle ["",{"text":"auf der SCHIENEN-WELT","color":"white","bold":true,"underlined":true}]
execute if score #TW_Welt TW matches 3 run title @s[scores={TW=20005}] subtitle ["",{"text":"auf der MECHANIK-WELT","color":"white","bold":true,"underlined":true}]
execute at @s[scores={TW=20005}] run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:20,CustomNameVisible:true,CustomName:"{\"text\":\"Willkommen!\"}",FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Flicker:true,Trail:true,Colors:[I;16711680,16776960,255,65280],FadeColors:[I;255,65280,16711680,16776960]}]} } } }


tellraw @s[scores={TW=2}] ["",{"text":"/Kreativ /k","bold":true},{"text":" -- Spielmodus: Kreativ"}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Kreativ"]}}]}] TW 20006
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/k"]}}]}] TW 20006
gamemode creative @s[scores={TW=20006},gamemode=!creative]


tellraw @s[scores={TW=2}] ["",{"text":"/Abenteuer /a","bold":true},{"text":" -- Spielmodus: Abenteuer"}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Abenteuer"]}}]}] TW 20007
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/a"]}}]}] TW 20007
gamemode adventure @s[scores={TW=20007},gamemode=!adventure]


tellraw @s[scores={TW=2}] ["",{"text":"/Redstone-Welt /rw","bold":true},{"text":" -- Downloadhinweis für diese Welt."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Redstone-Welt"]}}]}] TW 20008
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/rw"]}}]}] TW 20008
tellraw @s[scores={TW=20008}] ["",{"text":"Diese Welt kann im Minecraft-Technik-Wiki unter","color":"green"},"\n",{"text":"'","color":"white"},{"text":"Redstone-Welt","color":"yellow","hoverEvent":{"action":"show_text","value":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Redstone-Welt"} },{"text":"'","color":"white"},{"text":" heruntergeladen werden.","color":"green"}]


tellraw @s[scores={TW=2}] ["",{"text":"/Schienen-Welt /sw","bold":true},{"text":" -- Downloadhinweis für diese Welt."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Schienen-Welt"]}}]}] TW 20009
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/sw"]}}]}] TW 20009
tellraw @s[scores={TW=20009}] [{"text":"Diese Welt kann im Minecraft-Technik-Wiki unter","color":"green"},"\n",{"text":"'","color":"white"},{"text":"Schienen-Welt","color":"yellow","hoverEvent":{"action":"show_text","value":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Schienen-Welt"} },{"text":"'","color":"white"},{"text":" heruntergeladen werden.","color":"green"}]


tellraw @s[scores={TW=2}] ["",{"text":"/Mechanik-Welt /mw","bold":true},{"text":" -- Downloadhinweis für diese Welt."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Mechanik-Welt"]}}]}] TW 20010
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/mw"]}}]}] TW 20010
tellraw @s[scores={TW=20010}] [{"text":"Diese Welt kann im Minecraft-Technik-Wiki unter","color":"green"},"\n",{"text":"'","color":"white"},{"text":"Mechanik-Welt","color":"yellow","hoverEvent":{"action":"show_text","value":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Mechanik-Welt"} },{"text":"'","color":"white"},{"text":" heruntergeladen werden.","color":"green"}]


tellraw @s[scores={TW=2}] ["",{"text":"/!Hinweis /!hs /!info","bold":true},{"text":" -- Schaltet Downloadhinweis aus."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!Hinweis"]}}]}] TW 20011
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!hs"]}}]}] TW 20011
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!info"]}}]}] TW 20011
tellraw @s[tag=TW_Kein_Hinweis,scores={TW=20011}] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Es ist bereits umgestellt auf keine Downloadbenachrichtigung.","color":"red"}]
tellraw @s[tag=!TW_Kein_Hinweis,scores={TW=20011}] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Umgestellt auf keine Downloadbenachrichtigung.","color":"yellow"}]
tag @s[tag=!TW_Kein_Hinweis,scores={TW=20011}] add TW_Kein_Hinweis


tellraw @s[scores={TW=2}] ["",{"text":"/Hinweis /hs /info","bold":true},{"text":" -- Schaltet Downloadhinweis ein."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Hinweis"]}}]}] TW 20012
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/hs"]}}]}] TW 20012
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/info"]}}]}] TW 20012
tellraw @s[scores={TW=20012},tag=!TW_Kein_Hinweis] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Es ist bereits umgestellt auf Downloadbenachrichtigung.","color":"red"}]
replaceitem entity @s[scores={TW=20012},tag=TW_Kein_Hinweis] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Startzeit"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }
tellraw @s[scores={TW=20012},tag=TW_Kein_Hinweis] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Umgestellt auf zirkulierende Downloadbenachrichtigung.","color":"green"}]
tag @s[scores={TW=20012},tag=TW_Kein_Hinweis] remove TW_Kein_Hinweis


tellraw @s[scores={TW=2}] ["",{"text":"/Wiki /wk","bold":true},{"text":" -- Schaltet die Links wieder ein."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Wiki"]}}]}] TW 20013
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/wk"]}}]}] TW 20013
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=20013}] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Es ist bereits auf Technik-Wiki-Links umgestellt","color":"red"}]
tellraw @s[tag=TW_Kein_Wiki,scores={TW=20013}] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Umgestellt auf Technik-Wiki-Links","color":"green"}]
tag @s[tag=TW_Kein_Wiki,scores={TW=20013}] remove TW_Kein_Wiki


tellraw @s[scores={TW=2}] ["",{"text":"/!Wiki /!wk","bold":true},{"text":" -- Schaltet die Links an den Technik-Schildern aus."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!Wiki"]}}]}] TW 20014
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!wk"]}}]}] TW 20014
tellraw @s[tag=TW_Kein_Wiki,scores={TW=20014}] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Es ist bereits auf keine Technik-Wiki-Links umgestellt","color":"red"}]
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=20014}] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Umgestellt auf keine Technik-Wiki-Links","color":"yellow"}]
tag @s[tag=!TW_Kein_Wiki,scores={TW=20014}] add TW_Kein_Wiki


tellraw @s[scores={TW=2}] ["",{"text":"/!Einstieg /!es","bold":true},{"text":" -- Setzt den Spieler beim Beitritt nicht zurück."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!Einstieg"]}}]}] TW 20015
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!es"]}}]}] TW 20015
tellraw @s[tag=TW_Kein_Beitritt,scores={TW=20015}] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Es ist bereits umgestellt auf keine Wiedereinstiegsrücksetzung","color":"red"}]
tellraw @s[tag=!TW_Kein_Beitritt,scores={TW=20015}] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Umgestellt auf keine Wiedereinstiegsrücksetzung","color":"yellow"}]
tag @s[tag=!TW_Kein_Beitritt,scores={TW=20015}] add TW_Kein_Beitritt


tellraw @s[scores={TW=2}] ["",{"text":"/Einstieg /es","bold":true},{"text":" -- Der beitrentende Spieler wird zurückgesetzt."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Einstieg"]}}]}] TW 20016
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/es"]}}]}] TW 20016
tellraw @s[tag=!TW_Kein_Beitritt,scores={TW=20016}] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Es ist bereits umgestellt auf Wiedereinstiegsrücksetzung.","color":"red"}]
tellraw @s[tag=TW_Kein_Beitritt,scores={TW=20016}] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Umgestellt auf Wiedereinstiegsrücksetzung.","color":"green"}]
tag @s[tag=TW_Kein_Beitritt,scores={TW=20016}] remove TW_Kein_Beitritt


tellraw @s[scores={TW=2}] ["",{"text":"/Wurf /wf","bold":true},{"text":" -- Beim Wurf vom Befehlsbuch (Taste Q) wird man zum Startpunkt gebracht."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Wurf"]}}]}] TW 20017
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/wf"]}}]}] TW 20017
tellraw @s[tag=TW_Wurf,scores={TW=20017}] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Es ist bereits umgestellt auf Buchwurf zum Startpunkt.","color":"red"}]
tellraw @s[tag=!TW_Wurf,scores={TW=20017}] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Beim Wurf des Befehlsbuches wird man nun zum Startpunkt teleportiert.","color":"green"}]
tag @s[tag=!TW_Wurf,scores={TW=20017}] add TW_Wurf


tellraw @s[scores={TW=2}] ["",{"text":"/!Wurf /!wf","bold":true},{"text":" -- Schaltet das Werfen zum Startpunkt aus."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!Wurf"]}}]}] TW 20018
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!wf"]}}]}] TW 20018
tellraw @s[tag=!TW_Wurf,scores={TW=20018}] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Es ist bereits umgestellt auf Buchwurf nicht zum Startpunkt","color":"red"}]
tellraw @s[tag=TW_Wurf,scores={TW=20018}] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Beim Wurf des Befehlsbuches wird man nicht teleportiert","color":"yellow"}]
tag @s[tag=TW_Wurf,scores={TW=20018}] remove TW_Wurf


tellraw @s[scores={TW=2}] ["",{"text":"/Deutschland /deu","bold":true},{"text":" -- Man erhält ein dauerhaftes Banner."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Deutschland"]}}]}] TW 20019
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/deu"]}}]}] TW 20019
tellraw @s[scores={TW=20019},tag=!TW_DEU] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Du besitzt nun das Deutschlandbanner.","color":"green"}]
tellraw @s[scores={TW=20019},tag=TW_DEU] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Du hast bereits das Deutschlandbanner.","color":"red"}]

tellraw @s[scores={TW=2}] ["",{"text":"/Österreich /aut","bold":true},{"text":" -- Man erhält ein dauerhaftes Banner."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Österreich"]}}]}] TW 20020
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/aut"]}}]}] TW 20020
tellraw @s[scores={TW=20020},tag=!TW_AUT] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Du besitzt nun das Österreichbanner.","color":"green"}]
tellraw @s[scores={TW=20020},tag=TW_AUT] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Du hast bereits das Österreichbanner.","color":"red"}]

tellraw @s[scores={TW=2}] ["",{"text":"/Schweiz /che","bold":true},{"text":" -- Man erhält ein dauerhaftes Banner."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Schweiz"]}}]}] TW 20021
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/che"]}}]}] TW 20021
tellraw @s[scores={TW=20021},tag=!TW_CHE] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Du besitzt nun das Schweizbanner.","color":"green"}]
tellraw @s[scores={TW=20021},tag=TW_CHE] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Du hast bereits das Schweizbanner.","color":"red"}]

tellraw @s[scores={TW=2}] ["",{"text":"/!Banner /!br","bold":true},{"text":" -- Die dauerhaften Banner werden entfernt."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!Banner"]}}]}] TW 20022
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/!br"]}}]}] TW 20022
tag @s[scores={TW=20019..20022},tag=TW_DEU] remove TW_DEU
tag @s[scores={TW=20019..20022},tag=TW_AUT] remove TW_AUT
tag @s[scores={TW=20019..20022},tag=TW_CHE] remove TW_CHE
replaceitem entity @s[scores={TW=20022}] armor.head minecraft:air
tellraw @s[scores={TW=20022}] ["",{"text":"[","color":"dark_gray"},{"text":"BEFEHL","hoverEvent":{"action":"show_text","value":{"translate":"Befehl"} },"color":"yellow","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Das Banner wurde entfernt.","color":"yellow"}]

tag @s[scores={TW=20019},tag=!TW_DEU] add TW_DEU
tag @s[scores={TW=20020},tag=!TW_AUT] add TW_AUT
tag @s[scores={TW=20021},tag=!TW_CHE] add TW_CHE


tellraw @s[scores={TW=2}] ["",{"text":"/Startzeit /sz","bold":true},{"text":" -- Stellt die Zähler für Hinweise auf eins zurück."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Startzeit"]}}]}] TW 20023
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/sz"]}}]}] TW 20023
scoreboard players set @s[scores={TW=20023}] TW_Zeit 0


tellraw @s[scores={TW=2}] ["",{"text":"/Fehler /err","bold":true},{"text":" -- Gibt Hinweis auf Wiki-Seite, wo ein Fehler dieser Welt gemeldet werden kann"}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Fehler"]}}]}] TW 20024
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/err"]}}]}] TW 20024
tellraw @s[scores={TW=20024}] [{"text":" Melde Fehler im Technik-Wiki: ","color":"green"},{"text":"'Gemeinschaftsportal'","color":"yellow","hoverEvent":{"action":"show_text","value":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Minecraft_Wiki_Diskussion:Gemeinschaftsportal"} },"\n",{"text":" Melde Fehler im Forum: ","color":"green"},{"text":"'Unlimitedworld'","color":"yellow","hoverEvent":{"action":"show_text","value":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://uwmc.de/p9691"} }]


tellraw @s[scores={TW=2}] ["",{"text":"/Helfer /hr","bold":true},{"text":" -- Zeigt alle Helfer für die Welt an."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Helfer"]}}]}] TW 20025
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/hr"]}}]}] TW 20025
tellraw @s[scores={TW=20025}] [{"text":"Die Helfer von Benutzer Nethonos: ","color":"dark_green"},{"text":"\n-","color":"white"},{"text":"RikuShadowclaw","color":"gold","hoverEvent":{"action":"show_text","value":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:RikuShadowclaw"} },{"text":"         -","color":"white"},{"text":"Markus_Rost","color":"gold","hoverEvent":{"action":"show_text","value":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:MarkusRost"} },{"text":"\n-","color":"white"},{"text":"_Gusion_","color":"gold","hoverEvent":{"action":"show_text","value":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:OriginalGusion"} },{"text":"                 -","color":"white"},{"text":"fscript","color":"gold","hoverEvent":{"action":"show_text","value":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:Fscript"} },{"text":"\n-","color":"white"},{"text":"Gelbstern","color":"gold","hoverEvent":{"action":"show_text","value":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:Gelbstern"} },{"text":"                -","color":"white"},{"text":"Alcatraz997","color":"gold","hoverEvent":{"action":"show_text","value":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:Alcatraz997"} },{"text":"\n-","color":"white"},{"text":"Gr4phene","color":"gold","hoverEvent":{"action":"show_text","value":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:Gr4phene"} },{"text":"                -","color":"white"},{"text":"piegames","color":"gold","hoverEvent":{"action":"show_text","value":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:Piegames"} },{"text":"\n-","color":"white"},{"text":"Zaibod","color":"gold","hoverEvent":{"action":"show_text","value":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:Zaibod"} },{"text":"                    -","color":"white"},{"text":"Morock","color":"gold","hoverEvent":{"action":"show_text","value":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:Bodenseepirat"} },{"text":"\n-","color":"white"},{"text":"Tenebra99","color":"gold","hoverEvent":{"action":"show_text","value":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzerin:Tenebra99"} },{"text":"              -","color":"white"},{"text":"Nieke","color":"gold","hoverEvent":{"action":"show_text","value":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:Nike020410"} }]


tellraw @s[scores={TW=2}] ["",{"text":"/Hoch /ho","bold":true},{"text":" -- Man erklimmt das Dach (Erweitert: und man erhält eine Rakete)."}]
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/Hoch"]}}]}] TW 20026
scoreboard players set @s[nbt={Inventory:[{Slot:8b,tag:{pages:["/ho"]}}]}] TW 20026
teleport @s[scores={TW=20026}] 0 91 0
give @s[scores={TW=20026},tag=TW_Erweitert] minecraft:firework_rocket 64

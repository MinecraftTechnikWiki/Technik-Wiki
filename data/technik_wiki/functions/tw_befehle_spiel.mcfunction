
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Hilfe"} run scoreboard players set @s TW 2
execute if data storage technik_wiki:tw_daten {TW_Befehl:"h"} run scoreboard players set @s TW 2
execute if data storage technik_wiki:tw_daten {TW_Befehl:"help"} run scoreboard players set @s TW 2

tellraw @s[scores={TW=2}] ["\n",{"text":"--- ","color":"dark_green"},{"translate":"Befehlsbuch-Hilfeseite","color":"dark_green"},{"text":" (Hilfe) ---\n\n","color":"dark_green"}]
tellraw @s[scores={TW=2}] ["",{"text":"Hilfe h help","color":"gray","bold":true},{"text":" -- Gibt eine Liste aller möglichen Befehlsbuch-Befehle im Chat aus."}]
advancement grant @s[scores={TW=2},advancements={technik_wiki:tw_hilfe=false}] only technik_wiki:tw_hilfe


tellraw @s[scores={TW=2}] ["",{"text":"Startpunkt sr spawn","color":"gray","bold":true},{"text":" -- Teleportiert den Spieler zum Startpunkt."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Startpunkt"} run scoreboard players set @s TW 20001
execute if data storage technik_wiki:tw_daten {TW_Befehl:"sr"} run scoreboard players set @s TW 20001
execute if data storage technik_wiki:tw_daten {TW_Befehl:"spawn"} run scoreboard players set @s TW 20001
teleport @s[scores={TW=20001}] 0 49 0


tellraw @s[scores={TW=2}] ["",{"text":"Erweitert ew","color":"gray","bold":true},{"text":" -- Man erhält als Operator erweiterte Rechte."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Erweitert"} run scoreboard players set @s TW 20002
execute if data storage technik_wiki:tw_daten {TW_Befehl:"ew"} run scoreboard players set @s TW 20002
tellraw @s[scores={TW=20002}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Klicke auf Erweitert um einen Befehl in der Chatleiste zu erhalten. Führe diesen als Operator aus und erhalte die erweiterten Rechte.","color":"gold"},"\n",{"text":"Erweitert","color":"yellow","bold":true,"clickEvent":{"action":"suggest_command","value":"/tag @s[tag=!TW_Erweitert] add TW_Erweitert"},"hoverEvent":{"action":"show_text","contents":{"text":"","extra":[{"text":"Erhalte die erweiterten Rechte","color":"green"}]} } }]


tellraw @s[scores={TW=2}] ["",{"text":"!Erweitert !ew","color":"gray","bold":true},{"text":" -- Man entfernt die erweiterten Rechte."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!Erweitert"} run scoreboard players set @s TW 20003
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!ew"} run scoreboard players set @s TW 20003
tellraw @s[scores={TW=20003},tag=!TW_Erweitert] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Die erweiterten Rechte wurden dir bereits genommen.","color":"red"}]
tellraw @s[scores={TW=20003},tag=TW_Erweitert] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Erweiterte Rechte entfernt.","color":"yellow"}]
tag @s[scores={TW=20003},tag=TW_Erweitert] remove TW_Erweitert


tellraw @s[scores={TW=2}] ["",{"text":"Version v","color":"gray","bold":true},{"text":" -- Zeigt die Welt-Version an, in der man sich befindet."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Version"} run scoreboard players set @s TW 20004
execute if data storage technik_wiki:tw_daten {TW_Befehl:"v"} run scoreboard players set @s TW 20004
tellraw @s[scores={TW=20004}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Info","interpret":true},{"storage":"technik_wiki:tw_daten","nbt":"TW_Welt","interpret":true},{"text":" 1.","bold":true},{"score":{"name":"#TW_Version","objective":"TW"},"bold":true},{"text":"a","bold":true}]


tellraw @s[scores={TW=2}] ["",{"text":"Begrüßung bg","color":"gray","bold":true},{"text":" -- Man sieht eine Titelnachricht und eine Rakete."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Begrüßung"} run scoreboard players set @s TW 20005
execute if data storage technik_wiki:tw_daten {TW_Befehl:"bg"} run scoreboard players set @s TW 20005
title @s[scores={TW=20005}] title ["",{"text":"Willkommen!","color":"gold","bold":true}]
title @s[scores={TW=20005}] subtitle ["",{"text":"auf der ","color":"white","bold":true,"underlined":true},{"storage":"technik_wiki:tw_daten","nbt":"TW_Welt","interpret":true,"underlined":true}]
execute at @s[scores={TW=20005}] run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:20,CustomNameVisible:true,CustomName:'{"text":"Willkommen!","color":"gold","bold":true}',FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Flicker:true,Trail:true,Colors:[I;16711680,16776960,255,65280],FadeColors:[I;255,65280,16711680,16776960]}]} } } }


tellraw @s[scores={TW=2}] ["",{"text":"Kreativ k","color":"gray","bold":true},{"text":" -- Spielmodus: Kreativ"}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Kreativ"} run scoreboard players set @s TW 20006
execute if data storage technik_wiki:tw_daten {TW_Befehl:"k"} run scoreboard players set @s TW 20006
gamemode creative @s[scores={TW=20006},gamemode=!creative]


tellraw @s[scores={TW=2}] ["",{"text":"Abenteuer a","color":"gray","bold":true},{"text":" -- Spielmodus: Abenteuer"}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Abenteuer"} run scoreboard players set @s TW 20007
execute if data storage technik_wiki:tw_daten {TW_Befehl:"a"} run scoreboard players set @s TW 20007
gamemode adventure @s[scores={TW=20007},gamemode=!adventure]


tellraw @s[scores={TW=2}] ["",{"text":"Redstone-Welt rw","color":"gray","bold":true},{"text":" -- Downloadhinweis für die Redstone-Welt."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Redstone-Welt"} run scoreboard players set @s TW 20008
execute if data storage technik_wiki:tw_daten {TW_Befehl:"rw"} run scoreboard players set @s TW 20008
tellraw @s[scores={TW=20008}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Info","interpret":true},{"text":"Diese Welt kann im Minecraft-Technik-Wiki unter ","color":"green","bold":true},{"text":"'","color":"white","bold":true},{"text":"Redstone-Welt","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","contents":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Redstone-Welt"} },{"text":"'","color":"white","bold":true},{"text":" heruntergeladen werden.","color":"green","bold":true}]


tellraw @s[scores={TW=2}] ["",{"text":"Schienen-Welt sw","color":"gray","bold":true},{"text":" -- Downloadhinweis für die Schienen-Welt."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Schienen-Welt"} run scoreboard players set @s TW 20009
execute if data storage technik_wiki:tw_daten {TW_Befehl:"sw"} run scoreboard players set @s TW 20009
tellraw @s[scores={TW=20009}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Info","interpret":true},{"text":"Diese Welt kann im Minecraft-Technik-Wiki unter ","color":"green","bold":true},{"text":"'","color":"white","bold":true},{"text":"Schienen-Welt","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","contents":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Schienen-Welt"} },{"text":"'","color":"white","bold":true},{"text":" heruntergeladen werden.","color":"green","bold":true}]


tellraw @s[scores={TW=2}] ["",{"text":"Mechanik-Welt mw","color":"gray","bold":true},{"text":" -- Downloadhinweis für die Mechanik-Welt."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Mechanik-Welt"} run scoreboard players set @s TW 20010
execute if data storage technik_wiki:tw_daten {TW_Befehl:"mw"} run scoreboard players set @s TW 20010
tellraw @s[scores={TW=20010}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Info","interpret":true},{"text":"Diese Welt kann im Minecraft-Technik-Wiki unter ","color":"green","bold":true},{"text":"'","color":"white","bold":true},{"text":"Mechanik-Welt","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","contents":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Mechanik-Welt"} },{"text":"'","color":"white","bold":true},{"text":" heruntergeladen werden.","color":"green","bold":true}]


tellraw @s[scores={TW=2}] ["",{"text":"!Hinweis !hs !info","color":"gray","bold":true},{"text":" -- Schaltet Downloadhinweis aus."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!Hinweis"} run scoreboard players set @s TW 20011
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!hs"} run scoreboard players set @s TW 20011
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!info"} run scoreboard players set @s TW 20011
tellraw @s[tag=TW_Kein_Hinweis,scores={TW=20011}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Es ist bereits umgestellt auf keine Downloadbenachrichtigung.","color":"red"}]
tellraw @s[tag=!TW_Kein_Hinweis,scores={TW=20011}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Umgestellt auf keine Downloadbenachrichtigung.","color":"yellow"}]
tag @s[tag=!TW_Kein_Hinweis,scores={TW=20011}] add TW_Kein_Hinweis


tellraw @s[scores={TW=2}] ["",{"text":"Hinweis hs info","color":"gray","bold":true},{"text":" -- Schaltet Downloadhinweis ein."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Hinweis"} run scoreboard players set @s TW 20012
execute if data storage technik_wiki:tw_daten {TW_Befehl:"hs"} run scoreboard players set @s TW 20012
execute if data storage technik_wiki:tw_daten {TW_Befehl:"info"} run scoreboard players set @s TW 20012
tellraw @s[scores={TW=20012},tag=!TW_Kein_Hinweis] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Es ist bereits umgestellt auf Downloadbenachrichtigung.","color":"red"}]
item replace entity @s[scores={TW=20012},tag=TW_Kein_Hinweis] hotbar.8 with minecraft:writable_book{TW_Befehlsbuch:true,pages:["Startzeit"],display:{Name:'{"translate":"Befehlsbuch","color":"light_purple","italic":false}'} }
tellraw @s[scores={TW=20012},tag=TW_Kein_Hinweis] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Umgestellt auf zirkulierende Downloadbenachrichtigung.","color":"green"}]
tag @s[scores={TW=20012},tag=TW_Kein_Hinweis] remove TW_Kein_Hinweis


tellraw @s[scores={TW=2}] ["",{"text":"Wiki wk","color":"gray","bold":true},{"text":" -- Schaltet die Links wieder ein."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Wiki"} run scoreboard players set @s TW 20013
execute if data storage technik_wiki:tw_daten {TW_Befehl:"wk"} run scoreboard players set @s TW 20013
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=20013}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Es ist bereits auf Technik-Wiki-Links umgestellt","color":"red"}]
tellraw @s[tag=TW_Kein_Wiki,scores={TW=20013}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Umgestellt auf Technik-Wiki-Links","color":"green"}]
tag @s[tag=TW_Kein_Wiki,scores={TW=20013}] remove TW_Kein_Wiki


tellraw @s[scores={TW=2}] ["",{"text":"!Wiki !wk","color":"gray","bold":true},{"text":" -- Schaltet die Links an den Technik-Schildern aus."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!Wiki"} run scoreboard players set @s TW 20014
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!wk"} run scoreboard players set @s TW 20014
tellraw @s[tag=TW_Kein_Wiki,scores={TW=20014}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Es ist bereits auf keine Technik-Wiki-Links umgestellt","color":"red"}]
tellraw @s[tag=!TW_Kein_Wiki,scores={TW=20014}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Umgestellt auf keine Technik-Wiki-Links","color":"yellow"}]
tag @s[tag=!TW_Kein_Wiki,scores={TW=20014}] add TW_Kein_Wiki


tellraw @s[scores={TW=2}] ["",{"text":"!Einstieg !es","color":"gray","bold":true},{"text":" -- Setzt den Spieler beim Beitritt nicht zurück."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!Einstieg"} run scoreboard players set @s TW 20015
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!es"} run scoreboard players set @s TW 20015
tellraw @s[tag=TW_Kein_Beitritt,scores={TW=20015}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Es ist bereits umgestellt auf keine Wiedereinstiegsrücksetzung","color":"red"}]
tellraw @s[tag=!TW_Kein_Beitritt,scores={TW=20015}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Umgestellt auf keine Wiedereinstiegsrücksetzung","color":"yellow"}]
tag @s[tag=!TW_Kein_Beitritt,scores={TW=20015}] add TW_Kein_Beitritt


tellraw @s[scores={TW=2}] ["",{"text":"Einstieg es","color":"gray","bold":true},{"text":" -- Der beitrentende Spieler wird zurückgesetzt."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Einstieg"} run scoreboard players set @s TW 20016
execute if data storage technik_wiki:tw_daten {TW_Befehl:"es"} run scoreboard players set @s TW 20016
tellraw @s[tag=!TW_Kein_Beitritt,scores={TW=20016}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Es ist bereits umgestellt auf Wiedereinstiegsrücksetzung.","color":"red"}]
tellraw @s[tag=TW_Kein_Beitritt,scores={TW=20016}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Umgestellt auf Wiedereinstiegsrücksetzung.","color":"green"}]
tag @s[tag=TW_Kein_Beitritt,scores={TW=20016}] remove TW_Kein_Beitritt


tellraw @s[scores={TW=2}] ["",{"text":"Wurf wf","color":"gray","bold":true},{"text":" -- Beim Wurf vom Befehlsbuch (Taste Q) wird man zum Startpunkt gebracht."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Wurf"} run scoreboard players set @s TW 20017
execute if data storage technik_wiki:tw_daten {TW_Befehl:"wf"} run scoreboard players set @s TW 20017
tellraw @s[tag=TW_Wurf,scores={TW=20017}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Es ist bereits umgestellt auf Buchwurf zum Startpunkt.","color":"red"}]
tellraw @s[tag=!TW_Wurf,scores={TW=20017}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Beim Wurf des Befehlsbuches wird man nun zum Startpunkt teleportiert.","color":"green"}]
tag @s[tag=!TW_Wurf,scores={TW=20017}] add TW_Wurf


tellraw @s[scores={TW=2}] ["",{"text":"!Wurf !wf","color":"gray","bold":true},{"text":" -- Schaltet das Werfen zum Startpunkt aus."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!Wurf"} run scoreboard players set @s TW 20018
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!wf"} run scoreboard players set @s TW 20018
tellraw @s[tag=!TW_Wurf,scores={TW=20018}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Es ist bereits umgestellt auf Buchwurf nicht zum Startpunkt","color":"red"}]
tellraw @s[tag=TW_Wurf,scores={TW=20018}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Beim Wurf des Befehlsbuches wird man nicht teleportiert","color":"yellow"}]
tag @s[tag=TW_Wurf,scores={TW=20018}] remove TW_Wurf


tellraw @s[scores={TW=2}] ["",{"text":"Deutschland deu","color":"gray","bold":true},{"text":" -- Man erhält ein dauerhaftes Banner."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Deutschland"} run scoreboard players set @s TW 20019
execute if data storage technik_wiki:tw_daten {TW_Befehl:"deu"} run scoreboard players set @s TW 20019
tellraw @s[scores={TW=20019},tag=!TW_DEU] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Du besitzt nun das Deutschlandbanner.","color":"green"}]
tellraw @s[scores={TW=20019},tag=TW_DEU] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Du hast bereits das Deutschlandbanner.","color":"red"}]

tellraw @s[scores={TW=2}] ["",{"text":"Österreich aut","color":"gray","bold":true},{"text":" -- Man erhält ein dauerhaftes Banner."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Österreich"} run scoreboard players set @s TW 20020
execute if data storage technik_wiki:tw_daten {TW_Befehl:"aut"} run scoreboard players set @s TW 20020
tellraw @s[scores={TW=20020},tag=!TW_AUT] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Du besitzt nun das Österreichbanner.","color":"green"}]
tellraw @s[scores={TW=20020},tag=TW_AUT] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Du hast bereits das Österreichbanner.","color":"red"}]

tellraw @s[scores={TW=2}] ["",{"text":"Schweiz che","color":"gray","bold":true},{"text":" -- Man erhält ein dauerhaftes Banner."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Schweiz"} run scoreboard players set @s TW 20021
execute if data storage technik_wiki:tw_daten {TW_Befehl:"che"} run scoreboard players set @s TW 20021
tellraw @s[scores={TW=20021},tag=!TW_CHE] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Du besitzt nun das Schweizbanner.","color":"green"}]
tellraw @s[scores={TW=20021},tag=TW_CHE] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Du hast bereits das Schweizbanner.","color":"red"}]

tellraw @s[scores={TW=2}] ["",{"text":"!Banner !br","color":"gray","bold":true},{"text":" -- Die dauerhaften Banner werden entfernt."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!Banner"} run scoreboard players set @s TW 20022
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!br"} run scoreboard players set @s TW 20022
tag @s[scores={TW=20019..20022},tag=TW_DEU] remove TW_DEU
tag @s[scores={TW=20019..20022},tag=TW_AUT] remove TW_AUT
tag @s[scores={TW=20019..20022},tag=TW_CHE] remove TW_CHE
item replace entity @s[scores={TW=20022}] armor.head with minecraft:air
tellraw @s[scores={TW=20022}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Das Banner wurde entfernt.","color":"yellow"}]

tag @s[scores={TW=20019},tag=!TW_DEU] add TW_DEU
tag @s[scores={TW=20020},tag=!TW_AUT] add TW_AUT
tag @s[scores={TW=20021},tag=!TW_CHE] add TW_CHE


tellraw @s[scores={TW=2}] ["",{"text":"Startzeit sz","color":"gray","bold":true},{"text":" -- Stellt die Zähler für Hinweise auf eins zurück."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Startzeit"} run scoreboard players set @s TW 20023
execute if data storage technik_wiki:tw_daten {TW_Befehl:"sz"} run scoreboard players set @s TW 20023
scoreboard players set @s[scores={TW=20023}] TW_Zeit 0


tellraw @s[scores={TW=2}] ["",{"text":"Fehler err","color":"gray","bold":true},{"text":" -- Gibt Hinweis auf Wiki-Seite, wo ein Fehler dieser Welt gemeldet werden kann"}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Fehler"} run scoreboard players set @s TW 20024
execute if data storage technik_wiki:tw_daten {TW_Befehl:"err"} run scoreboard players set @s TW 20024
tellraw @s[scores={TW=20024}] [{"text":" Melde Fehler im Technik-Wiki: ","color":"green"},{"text":"'Gemeinschaftsportal'","color":"yellow","hoverEvent":{"action":"show_text","contents":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Minecraft_Wiki_Diskussion:Gemeinschaftsportal"} },"\n",{"text":" Melde Fehler im Forum: ","color":"green"},{"text":"'Unlimitedworld'","color":"yellow","hoverEvent":{"action":"show_text","contents":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://uwmc.de/p9691"} }]


tellraw @s[scores={TW=2}] ["",{"text":"Helfer hr","color":"gray","bold":true},{"text":" -- Zeigt alle Helfer für die Welt an."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Helfer"} run scoreboard players set @s TW 20025
execute if data storage technik_wiki:tw_daten {TW_Befehl:"hr"} run scoreboard players set @s TW 20025
tellraw @s[scores={TW=20025}] [{"text":"Die Helfer von Nethonos: ","color":"dark_green"},"\n",{"text":"-","color":"white"},{"text":"RikuShadowclaw","color":"gold","hoverEvent":{"action":"show_text","contents":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:RikuShadowclaw"} },{"text":"         -","color":"white"},{"text":"Markus_Rost","color":"gold","hoverEvent":{"action":"show_text","contents":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:MarkusRost"} },"\n",{"text":"-","color":"white"},{"text":"_Gusion_","color":"gold","hoverEvent":{"action":"show_text","contents":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:OriginalGusion"} },{"text":"                 -","color":"white"},{"text":"fscript","color":"gold","hoverEvent":{"action":"show_text","contents":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:Fscript"} },"\n",{"text":"-","color":"white"},{"text":"Gelbstern","color":"gold","hoverEvent":{"action":"show_text","contents":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:Gelbstern"} },{"text":"                -","color":"white"},{"text":"Alcatraz997","color":"gold","hoverEvent":{"action":"show_text","contents":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:Alcatraz997"} },"\n",{"text":"-","color":"white"},{"text":"Gr4phene","color":"gold","hoverEvent":{"action":"show_text","contents":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:Gr4phene"} },{"text":"                -","color":"white"},{"text":"piegames","color":"gold","hoverEvent":{"action":"show_text","contents":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:Piegames"} },"\n",{"text":"-","color":"white"},{"text":"Zaibod","color":"gold","hoverEvent":{"action":"show_text","contents":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:Zaibod"} },{"text":"                    -","color":"white"},{"text":"Morock","color":"gold","hoverEvent":{"action":"show_text","contents":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:Bodenseepirat"} },"\n",{"text":"-","color":"white"},{"text":"Tenebra99","color":"gold","hoverEvent":{"action":"show_text","contents":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzerin:Tenebra99"} },{"text":"              -","color":"white"},{"text":"Nieke","color":"gold","hoverEvent":{"action":"show_text","contents":{"translate":"Klick mich!"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Benutzer:Nike020410"} }]


tellraw @s[scores={TW=2}] ["",{"text":"Hoch ho","color":"gray","bold":true},{"text":" -- Man erklimmt das Dach (Erweitert: und man erhält eine Rakete)."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Hoch"} run scoreboard players set @s TW 20026
execute if data storage technik_wiki:tw_daten {TW_Befehl:"ho"} run scoreboard players set @s TW 20026
teleport @s[scores={TW=20026}] 0 91 0
give @s[scores={TW=20026},tag=TW_Erweitert] minecraft:firework_rocket 64


tellraw @s[scores={TW=2}] ["",{"text":"Optionen opt","color":"gray","bold":true},{"text":" -- Man erhält eine Übersicht der eingestellten Optionen."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Optionen"} run scoreboard players set @s TW 20027
execute if data storage technik_wiki:tw_daten {TW_Befehl:"opt"} run scoreboard players set @s TW 20027

tellraw @s[scores={TW=20027}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true}]

execute if entity @s[scores={TW=20027},tag=!TW_Kein_Hinweis] run data modify storage technik_wiki:tw_daten TW_Bool set value '{"text":"wahr","color":"green","bold":true}'
execute if entity @s[scores={TW=20027},tag=TW_Kein_Hinweis] run data modify storage technik_wiki:tw_daten TW_Bool set value '{"text":"falsch","color":"red","bold":true}'

tellraw @s[scores={TW=20027}] ["",{"text":"Hinweis == ","color":"gold"},{"storage":"technik_wiki:tw_daten","nbt":"TW_Bool","interpret":true}]

execute if entity @s[scores={TW=20027},tag=!TW_Kein_Beitritt] run data modify storage technik_wiki:tw_daten TW_Bool set value '{"text":"wahr","color":"green","bold":true}'
execute if entity @s[scores={TW=20027},tag=TW_Kein_Beitritt] run data modify storage technik_wiki:tw_daten TW_Bool set value '{"text":"falsch","color":"red","bold":true}'

tellraw @s[scores={TW=20027}] ["",{"text":"Einstieg == ","color":"gold"},{"storage":"technik_wiki:tw_daten","nbt":"TW_Bool","interpret":true}]

execute if entity @s[scores={TW=20027},tag=TW_Wurf] run data modify storage technik_wiki:tw_daten TW_Bool set value '{"text":"wahr","color":"green","bold":true}'
execute if entity @s[scores={TW=20027},tag=!TW_Wurf] run data modify storage technik_wiki:tw_daten TW_Bool set value '{"text":"falsch","color":"red","bold":true}'

tellraw @s[scores={TW=20027}] ["",{"text":"Wurf == ","color":"gold"},{"storage":"technik_wiki:tw_daten","nbt":"TW_Bool","interpret":true}]

tellraw @s[scores={TW=2}] ["",{"text":"Verlauf history","color":"gray","bold":true},{"text":" -- Der Verlauf der Befehle die eingetippt wurden."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Verlauf"} run scoreboard players set @s TW 20028
execute if data storage technik_wiki:tw_daten {TW_Befehl:"history"} run scoreboard players set @s TW 20028

execute if entity @s[scores={TW=20028}] run say @e[type=minecraft:marker,tag=TW_Eingabe,limit=1]

execute if entity @s[scores={TW=20028}] run data modify storage technik_wiki:tw_daten TW_Verlauf set from entity @e[type=minecraft:marker,tag=TW_Eingabe,limit=1] data.TW_Verlauf
execute if entity @s[scores={TW=20028}] store result score #TW_Verlauf TW run data get storage technik_wiki:tw_daten TW_Verlauf
execute if entity @s[scores={TW=20028}] run function technik_wiki:tw_befehle_verlauf

tellraw @s[scores={TW=2}] ["",{"text":"!Verlauf !history","color":"gray","bold":true},{"text":" -- Löscht den Verlauf der Befehle die eingetippt wurden."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!Verlauf"} run scoreboard players set @s TW 20028
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!history"} run scoreboard players set @s TW 20028

execute if entity @s[scores={TW=20028}] run say @e[type=minecraft:marker,tag=TW_Eingabe,limit=1]

execute if entity @s[scores={TW=20028}] run data remove entity @e[type=minecraft:marker,tag=TW_Eingabe,limit=1] data.TW_Verlauf
tellraw @s[scores={TW=20028}] ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Hilfe","interpret":true},{"text":"Der Verlauf der eingetippten Befehle wurde entfernt.","color":"yellow"}]
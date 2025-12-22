
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Hilfe"} run scoreboard players set @s TW 2
execute if data storage technik_wiki:tw_daten {TW_Befehl:"h"} run scoreboard players set @s TW 2
execute if data storage technik_wiki:tw_daten {TW_Befehl:"help"} run scoreboard players set @s TW 2
tellraw @s[scores={TW=2}] ["",{text:"--- ",color:"dark_green"},{translate:"Befehlsbuch-Hilfeseite",color:"dark_green"},{text:" (Erweitert) ---\n\n",color:"dark_green"}]


tellraw @s[scores={TW=2}] ["",{text:"Zeitraffer zr",color:"gray",bold:true},{text:" -- Spielgeschwindigkeit wird erhöht."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Zeitraffer"} run scoreboard players set @s TW 30001
execute if data storage technik_wiki:tw_daten {TW_Befehl:"zr"} run scoreboard players set @s TW 30001
execute store result score @s[scores={TW=30001}] TW_Test run gamerule random_tick_speed
execute store result score @s[scores={TW=30001,TW_Test=10000}] TW_Test run gamerule random_tick_speed 100000
execute store result score @s[scores={TW=30001,TW_Test=1000}] TW_Test run gamerule random_tick_speed 10000
execute store result score @s[scores={TW=30001,TW_Test=100}] TW_Test run gamerule random_tick_speed 1000
execute store result score @s[scores={TW=30001,TW_Test=3}] TW_Test run gamerule random_tick_speed 100
tellraw @s[scores={TW=30001}] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Zufallstickgeschwindigkeit == ",color:"yellow"},{score:{name:"@s",objective:"TW_Test"},color:"dark_purple",bold:true}]


tellraw @s[scores={TW=2}] ["",{text:"!Zeitraffer !zr",color:"gray",bold:true},{text:" -- Spielgeschwindigkeit wird normalisiert."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!Zeitraffer"} run scoreboard players set @s TW 30002
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!zr"} run scoreboard players set @s TW 30002
tellraw @s[scores={TW=30002}] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Zufallstickgeschwindigkeit == ",color:"green"},{text:"3",color:"dark_purple",bold:true}]
execute if entity @s[scores={TW=30002}] run gamerule random_tick_speed 3


tellraw @s[scores={TW=2}] ["",{text:"Überleben ü",color:"gray",bold:true},{text:" -- Spielmodus: Überleben"}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Überleben"} run scoreboard players set @s TW 30004
execute if data storage technik_wiki:tw_daten {TW_Befehl:"ü"} run scoreboard players set @s TW 30004
gamemode survival @s[scores={TW=30004},gamemode=!survival]


tellraw @s[scores={TW=2}] ["",{text:"Zuschauer z",color:"gray",bold:true},{text:" -- Spielmodus: Zuschauer"}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Zuschauer"} run scoreboard players set @s TW 30005
execute if data storage technik_wiki:tw_daten {TW_Befehl:"z"} run scoreboard players set @s TW 30005
tellraw @s[scores={TW=30005}] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Du befindest dich im Zuschauermodus. Klicke auf einen der Spielmodi um zurück in den Spielmodus deiner Wahl zu kommen oder gelange zum Startpunkt in die Mitte der Welt, für den Kreativmodus.",color:"gold"},"\n",{text:"Kreativ",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger TW_Modus set 1"},hover_event:{action:"show_text",value:{text:"",extra:[{text:"Gehe in den Kreativmodus",color:"green"}]} } },"\n",{text:"Abenteuer",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger TW_Modus set 2"},hover_event:{action:"show_text",value:{text:"",extra:[{text:"Gehe in den Abenteuermodus",color:"green"}]} } },"\n",{text:"Überleben",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger TW_Modus set 3"},hover_event:{action:"show_text",value:{text:"",extra:[{text:"Gehe in den Überlebensmodus",color:"green"}]} } }]
gamemode spectator @s[gamemode=!spectator,scores={TW=30005}]
execute if entity @s[scores={TW=30005}] run data modify entity @n[type=minecraft:marker,tag=TW_Eingabe] data.TW_Befehle append value "Startzeit"
execute if entity @s[scores={TW=30005}] run data modify entity @n[type=minecraft:marker,tag=TW_Eingabe] data.TW_Befehle append value "!Befehl"
execute if entity @s[scores={TW=30005}] run data modify entity @n[type=minecraft:marker,tag=TW_Eingabe] data.TW_Befehle append value "Schaltfläche"
execute if entity @s[scores={TW=30005}] run data modify entity @n[type=minecraft:marker,tag=TW_Eingabe] data.TW_Befehle append value "Nachtsicht"


tellraw @s[scores={TW=2}] ["",{text:"Befehl b",color:"gray",bold:true},{text:" -- Spielregel: Befehlsblockausgabe ein."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Befehl"} run scoreboard players set @s TW 30006
execute if data storage technik_wiki:tw_daten {TW_Befehl:"b"} run scoreboard players set @s TW 30006
execute if entity @s[scores={TW=30006}] run gamerule command_block_output true
execute if entity @s[scores={TW=30006}] run gamerule log_admin_commands true


tellraw @s[scores={TW=2}] ["",{text:"!Befehl !b",color:"gray",bold:true},{text:" -- Spielregel: Befehlsblockausgabe aus."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!Befehl"} run scoreboard players set @s TW 30007
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!b"} run scoreboard players set @s TW 30007
execute if entity @s[scores={TW=30007}] run gamerule command_block_output false
execute if entity @s[scores={TW=30007}] run gamerule log_admin_commands false


tellraw @s[scores={TW=2}] ["",{text:"Sonnenstand so so#2",color:"gray",bold:true},{text:" -- Sonnenstand wird um einen viertel Tag geändert."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Sonnenstand"} run scoreboard players set @s TW 30008
execute if data storage technik_wiki:tw_daten {TW_Befehl:"so"} run scoreboard players set @s TW 30008
tellraw @s[scores={TW=30008}] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Der Sonnenstand wurde geändert."}]
execute if entity @s[scores={TW=30008}] run time add 6000
execute if data storage technik_wiki:tw_daten {TW_Befehl:"so#2"} run scoreboard players set @s TW 30008
execute if entity @s[scores={TW=30008}] if data storage technik_wiki:tw_daten {TW_Befehl:"so#2"} run time add 6000


tellraw @s[scores={TW=2}] ["",{text:"Monster mo",color:"gray",bold:true},{text:" -- Monster werden eingeschaltet."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Monster"} run scoreboard players set @s TW 30009
execute if data storage technik_wiki:tw_daten {TW_Befehl:"mo"} run scoreboard players set @s TW 30009
tellraw @s[scores={TW=30009}] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Monster können nun spawnen",color:"red"}]
execute if entity @s[scores={TW=30009}] run difficulty normal
execute if entity @s[scores={TW=30009}] run gamerule spawn_mobs true


tellraw @s[scores={TW=2}] ["",{text:"!Monster !mo",color:"gray",bold:true},{text:" -- Monster werden ausgeschaltet."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!Monster"} run scoreboard players set @s TW 30010
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!mo"} run scoreboard players set @s TW 30010
tellraw @s[scores={TW=30010}] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Es können keine Monster spawnen",color:"green"}]
execute if entity @s[scores={TW=30010}] run difficulty easy
execute if entity @s[scores={TW=30010}] run gamerule spawn_mobs false


tellraw @s[scores={TW=2}] ["",{text:"Engel el",color:"gray",bold:true},{text:" -- Man schaltet extreme Elytren ein oder aus."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Engel"} run scoreboard players set @s TW 30011
execute if data storage technik_wiki:tw_daten {TW_Befehl:"el"} run scoreboard players set @s TW 30011
execute if entity @s[scores={TW=30011},tag=!TW_Engel] store success score @s TW_Test run tag @s add TW_Engel
tellraw @s[scores={TW=30011,TW_Test=1},tag=TW_Engel] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Du besitzt nun die Engelsflügel.",color:"green"}]
clear @s[scores={TW=30011,TW_Test=0},tag=TW_Engel] minecraft:elytra[minecraft:custom_data={TW_Elytren:true}]
tellraw @s[scores={TW=30011,TW_Test=0},tag=TW_Engel] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Die Engelsflügel wurden entfernt.",color:"yellow"}]
tag @s[scores={TW=30011,TW_Test=0},tag=TW_Engel] remove TW_Engel


tellraw @s[scores={TW=2}] ["",{text:"Willkommen w",color:"gray",bold:true},{text:" -- Man wird als neuer Besucher willkommen geheißen."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Willkommen"} run scoreboard players set @s TW 30012
execute if data storage technik_wiki:tw_daten {TW_Befehl:"w"} run scoreboard players set @s TW 30012
tag @s[scores={TW=30012}] remove TW_Willkommen


tellraw @s[scores={TW=2}] ["",{text:"!Willkommen !w",color:"gray",bold:true},{text:" -- Der Zähler der beigetretenen Spieler wird zurückgesetzt."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!Willkommen"} run scoreboard players set @s TW 30013
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!w"} run scoreboard players set @s TW 30013
execute if entity @s[scores={TW=30013}] run scoreboard players reset * TW_Beitritt
execute if entity @s[scores={TW=30013}] run scoreboard objectives setdisplay sidebar
tellraw @s[scores={TW=30013}] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Willkommenszähler zurückgesetzt!",color:"red"}]


tellraw @s[scores={TW=2}] ["",{text:"Schaltfläche sf",color:"gray",bold:true},{text:" -- Ermöglicht die Schaltflächen für manche Spielmodi."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Schaltfläche"} run scoreboard players set @s TW 30014
execute if data storage technik_wiki:tw_daten {TW_Befehl:"sf"} run scoreboard players set @s TW 30014
scoreboard players enable @s[scores={TW=30014}] TW_Modus


tellraw @s[scores={TW=2}] ["",{text:"Nachtsicht nt",color:"gray",bold:true},{text:" -- Gibt dem Spieler den Effekt Nachtsicht."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Nachtsicht"} run scoreboard players set @s TW 30015
execute if data storage technik_wiki:tw_daten {TW_Befehl:"nt"} run scoreboard players set @s TW 30015
tellraw @s[scores={TW=30015},tag=!TW_Nachtsicht] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Die permanente Nachtsicht wurde aktiviert."}]
tag @s[scores={TW=30015},tag=!TW_Nachtsicht] add TW_Nachtsicht
effect give @s[scores={TW=30015}] minecraft:night_vision infinite 255 true

tellraw @s[scores={TW=2}] ["",{text:"Befehle be",color:"gray",bold:true},{text:" -- Man erhält diverse Befehlsblöcke."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Befehle"} run scoreboard players set @s TW 30016
execute if data storage technik_wiki:tw_daten {TW_Befehl:"be"} run scoreboard players set @s TW 30016
execute if entity @s[scores={TW=30016}] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:command_block",count:1},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:repeating_command_block",count:1} },{id:"minecraft:item",Item:{id:"minecraft:chain_command_block",count:1} },{id:"minecraft:item",Item:{id:"minecraft:structure_block",count:1} },{id:"minecraft:item",Item:{id:"minecraft:structure_void",count:1} },{id:"minecraft:item",Item:{id:"minecraft:barrier",count:1} } ] }

tellraw @s[scores={TW=2}] ["",{text:"Redstone re",color:"gray",bold:true},{text:" -- Man erhält diverse Redstone-Elemente."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Redstone"} run scoreboard players set @s TW 30017
execute if data storage technik_wiki:tw_daten {TW_Befehl:"re"} run scoreboard players set @s TW 30017
execute if entity @s[scores={TW=30017}] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:redstone",count:1},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:repeater",count:1} },{id:"minecraft:item",Item:{id:"minecraft:comparator",count:1} },{id:"minecraft:item",Item:{id:"minecraft:redstone_torch",count:1} },{id:"minecraft:item",Item:{id:"minecraft:gold_block",count:1} },{id:"minecraft:item",Item:{id:"minecraft:iron_block",count:1} } ] }

tellraw @s[scores={TW=2}] ["",{text:"Schiene sn",color:"gray",bold:true},{text:" -- Man erhält diverse Schienen-Elemente."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Schiene"} run scoreboard players set @s TW 30018
execute if data storage technik_wiki:tw_daten {TW_Befehl:"sn"} run scoreboard players set @s TW 30018
execute if entity @s[scores={TW=30018}] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:rail",count:1},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:powered_rail",count:1} },{id:"minecraft:item",Item:{id:"minecraft:detector_rail",count:1} },{id:"minecraft:item",Item:{id:"minecraft:activator_rail",count:1} },{id:"minecraft:item",Item:{id:"minecraft:andesite",count:1} },{id:"minecraft:item",Item:{id:"minecraft:coal_block",count:1} } ] }


tellraw @s[scores={TW=2}] ["",{text:"Drop dp",color:"gray",bold:true},{text:" -- Blöcke und Kreaturen droppen Gegenstände."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Drop"} run scoreboard players set @s TW 30019
execute if data storage technik_wiki:tw_daten {TW_Befehl:"dp"} run scoreboard players set @s TW 30019
tellraw @s[scores={TW=30019}] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Abgebaute Blöcke oder getötete Kreaturen können nun Gegenstände droppen.",color:"red"}]
execute if entity @s[scores={TW=30019}] run gamerule block_drops true
execute if entity @s[scores={TW=30019}] run gamerule entity_drops true
execute if entity @s[scores={TW=30019}] run gamerule mob_drops true


tellraw @s[scores={TW=2}] ["",{text:"Entfernen ent lö",color:"gray",bold:true},{text:" -- Entfernt verweilende Gegenstände oder schwebende Schriften."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Entfernen"} run scoreboard players set @s TW 30020
execute if data storage technik_wiki:tw_daten {TW_Befehl:"ent"} run scoreboard players set @s TW 30020
execute if data storage technik_wiki:tw_daten {TW_Befehl:"lö"} run scoreboard players set @s TW 30020
execute if entity @s[scores={TW=30020}] at @s store success score @s TW_Test run kill @n[tag=TW_Entfernen,distance=..3]
tellraw @s[scores={TW=30020,TW_Test=1}] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Ein Objekt wurde erfolgreich gelöscht.",color:"yellow"}]
tellraw @s[scores={TW=30020,TW_Test=0}] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Kein Objekt wurde gefunden.",color:"red"}]


tellraw @s[scores={TW=2}] ["",{text:"Schrift st",color:"gray",bold:true},{text:" -- Erzeugt eine selbstdefinierbare schwebende Schrift."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Schrift"} run scoreboard players set @s TW 30021
execute if data storage technik_wiki:tw_daten {TW_Befehl:"st"} run scoreboard players set @s TW 30021
execute if entity @s[scores={TW=30021}] at @s unless entity @n[distance=..3,type=minecraft:armor_stand,tag=TW_Schrift] run summon minecraft:armor_stand ~ ~1 ~ {Marker:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:{text:"Technik+Nummer"},Tags:["TW_Schrift","TW_Entfernen"]}
tellraw @s[scores={TW=30021}] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Klicke hier, um der Technik einen Namen zu geben.",color:"gold",hover_event:{action:"show_text",value:{text:"Klick mich!"} },click_event:{action:"suggest_command",command:'/data merge entity @n[distance=..3,type=minecraft:armor_stand,tag=TW_Schrift] {CustomName:{text:"Technik+Nummer"} }'} }]


tellraw @s[scores={TW=2}] ["",{text:"Plattform pt pt#2",color:"gray",bold:true},{text:" -- Teleporter-Plattform die bei Techniken steht, wird platziert."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Plattform"} run scoreboard players set @s TW 30022
execute if data storage technik_wiki:tw_daten {TW_Befehl:"pt"} run scoreboard players set @s TW 30022
execute if data storage technik_wiki:tw_daten {TW_Befehl:"pt#2"} run scoreboard players set @s TW 30022

execute as @s[y_rotation=-45..45,scores={TW=30022}] at @s rotated 90 0 align xyz run setblock ^3 ^ ^ minecraft:structure_block{mode:"LOAD",ignoreEntities:false,rotation:"CLOCKWISE_90",posX:2,posY:0,posZ:-2,name:"technik_wiki:tw_plattform_klein"} keep
execute as @s[y_rotation=45..135,scores={TW=30022}] at @s rotated 180 0 align xyz run setblock ^3 ^ ^ minecraft:structure_block{mode:"LOAD",ignoreEntities:false,rotation:"CLOCKWISE_180",posX:2,posY:0,posZ:2,name:"technik_wiki:tw_plattform_klein"} keep
execute as @s[y_rotation=135..-135,scores={TW=30022}] at @s rotated 270 0 align xyz run setblock ^3 ^ ^ minecraft:structure_block{mode:"LOAD",ignoreEntities:false,rotation:"COUNTERCLOCKWISE_90",posX:-2,posY:0,posZ:2,name:"technik_wiki:tw_plattform_klein"} keep
execute as @s[y_rotation=-135..-45,scores={TW=30022}] at @s rotated 0 0 align xyz run setblock ^3 ^ ^ minecraft:structure_block{mode:"LOAD",ignoreEntities:false,rotation:"NONE",posX:-2,posY:0,posZ:-2,name:"technik_wiki:tw_plattform_klein"} keep

execute if data storage technik_wiki:tw_daten {TW_Befehl:"pt"} run scoreboard players set @s TW -30022
execute as @s[y_rotation=-45..45,scores={TW=30022}] if data storage technik_wiki:tw_daten {TW_Befehl:"pt#2"} at @s rotated 90 0 align xyz run data merge block ^3 ^ ^ {posX:4,posZ:-2,name:"technik_wiki:tw_plattform"}
execute as @s[y_rotation=45..135,scores={TW=30022}] if data storage technik_wiki:tw_daten {TW_Befehl:"pt#2"} at @s rotated 180 0 align xyz run data merge block ^3 ^ ^ {posX:2,posZ:4,name:"technik_wiki:tw_plattform"}
execute as @s[y_rotation=135..-135,scores={TW=30022}] if data storage technik_wiki:tw_daten {TW_Befehl:"pt#2"} at @s rotated 270 0 align xyz run data merge block ^3 ^ ^ {posX:-4,posZ:2,name:"technik_wiki:tw_plattform"}
execute as @s[y_rotation=-135..-45,scores={TW=30022}] if data storage technik_wiki:tw_daten {TW_Befehl:"pt#2"} at @s rotated 0 0 align xyz run data merge block ^3 ^ ^ {posX:-2,posZ:-4,name:"technik_wiki:tw_plattform"}
execute if data storage technik_wiki:tw_daten {TW_Befehl:"pt"} run scoreboard players set @s TW 30022

execute as @s[scores={TW=30022}] at @s rotated ~90 0 align xyz run fill ^2 ^ ^-1 ^4 ^ ^1 minecraft:redstone_block replace minecraft:air


tellraw @s[scores={TW=2}] ["",{text:"Symbol sl",color:"gray",bold:true},{text:" -- Schaltet verweilende nicht aufhebende Gegenstände ein oder aus."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Symbol"} run scoreboard players set @s TW 30023
execute if data storage technik_wiki:tw_daten {TW_Befehl:"sl"} run scoreboard players set @s TW 30023
execute if entity @s[tag=!TW_Drop,scores={TW=30023}] store success score @s TW_Test run tag @s add TW_Drop
tellraw @s[scores={TW=30023,TW_Test=1}] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Ein geworfener beliebiger Gegenstand, der als Symbol für eine Technik-Gruppe stehen kann, wird nun nicht mehr verschwinden oder aufhebbar sein."}]
tag @s[tag=TW_Drop,scores={TW=30023,TW_Test=0}] remove TW_Drop
tellraw @s[scores={TW=30023,TW_Test=0}] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Gegenstände die nun geworfen werden, verweilen nun nicht mehr ewig."}]


tellraw @s[scores={TW=2}] ["",{text:"!Drop !dp",color:"gray",bold:true},{text:" -- Weder Blöcke noch Kreaturen droppen Gegenstände."}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!Drop"} run scoreboard players set @s TW 30024
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!dp"} run scoreboard players set @s TW 30024
tellraw @s[scores={TW=30024}] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Abgebaute Blöcke oder getötete Kreaturen droppen nun keine Gegenstände."}]
execute if entity @s[scores={TW=30024}] run gamerule block_drops false
execute if entity @s[scores={TW=30024}] run gamerule entity_drops false
execute if entity @s[scores={TW=30024}] run gamerule mob_drops false


tellraw @s[scores={TW=2}] ["",{text:"Rhythmus rh",color:"gray",bold:true},{text:" -- Stellt den Tag-Nacht-Rhythmus her"}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Rhythmus"} run scoreboard players set @s TW 30025
execute if data storage technik_wiki:tw_daten {TW_Befehl:"rh"} run scoreboard players set @s TW 30025
execute if entity @s[scores={TW=30025}] run gamerule advance_time true


tellraw @s[scores={TW=2}] ["",{text:"!Rhythmus !rh",color:"gray",bold:true},{text:" -- Lässt den Tag-Nacht-Rhythmus ausfallen"}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!Rhythmus"} run scoreboard players set @s TW 30026
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!rh"} run scoreboard players set @s TW 30026
execute if entity @s[scores={TW=30026}] run gamerule advance_time false
execute if entity @s[scores={TW=30026}] run time set noon


tellraw @s[scores={TW=2}] ["",{text:"Portal pl",color:"gray",bold:true},{text:" -- Erstellt an der aktuellen Position ein Portal"}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"Portal"} run scoreboard players set @s TW 30027
execute if data storage technik_wiki:tw_daten {TW_Befehl:"pl"} run scoreboard players set @s TW 30027
execute if entity @s[scores={TW=30027}] at @s align xz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Marker:true,Invisible:true,NoGravity:true,Tags:["TW_Portal","TW_Entfernen"]}


tellraw @s[scores={TW=2}] ["",{text:"!Nachtsicht !nt",color:"gray",bold:true},{text:" -- Entfernt die permantente Nachtsicht"}]
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!Nachtsicht"} run scoreboard players set @s TW 30028
execute if data storage technik_wiki:tw_daten {TW_Befehl:"!nt"} run scoreboard players set @s TW 30028
tellraw @s[tag=TW_Nachtsicht,scores={TW=30028}] ["",{storage:"technik_wiki:tw_daten",nbt:"TW_Erweitert",interpret:true},{text:"Die permanente Nachtsicht wurde entfernt."}]
effect clear @s[tag=TW_Nachtsicht,scores={TW=30028}] minecraft:night_vision
tag @s[tag=TW_Nachtsicht,scores={TW=30028}] remove TW_Nachtsicht


execute at @s store success score @s TW_Erfolg run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:oak_button[face=floor,powered=false] replace minecraft:oak_button[face=floor,powered=true]
replaceitem entity @s[scores={TW_Erfolg=1}] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/Startpunkt"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}"} }

tag @s[nbt={Inventory:[{Slot:8b,tag:{TW_Befehlsbuch:true} } ] } ] add TW_Buch
execute store success score @s[tag=TW_Buch] TW if entity @s[nbt=!{Inventory:[{Slot:8b,tag:{pages:["/"]} } ] } ]

execute if entity @s[tag=TW_Buch,tag=TW_Erweitert,scores={TW=1}] run function technik_wiki:tw_befehle_erweitert
execute if entity @s[tag=TW_Buch,scores={TW=1..2}] run function technik_wiki:tw_befehle_spiel
execute if entity @s[tag=TW_Buch,scores={TW=1}] run function technik_wiki:tw_gruppe

advancement grant @s[tag=TW_Buch,scores={TW=2..},advancements={technik_wiki:tw_befehlsbuch=false}] only technik_wiki:tw_befehlsbuch

tellraw @s[tag=TW_Buch,scores={TW=1}] ["",{"text":"Unbekannter Befehlsbuchbefehl ","color":"red"},{"entity":"@s","nbt":"Inventory[{Slot:8b}].tag.pages[]","underlined":true},{"text":". Tippe /Hilfe ein, um eine Liste von Befehlsbuchbefehlen zu erhalten.","color":"red"}]
tag @s[tag=TW_Buch,scores={TW=1..}] remove TW_Buch

replaceitem entity @s[tag=!TW_Buch] hotbar.8 minecraft:writable_book{TW_Befehlsbuch:true,pages:["/"],display:{Name:"{\"translate\":\"Befehlsbuch\",\"color\":\"light_purple\",\"italic\":false}",Lore:['"Tippe hier einen Befehl ein"','"(ohne Enter) und drücke"','"Fertig. Beispiel: /Hilfe um"','"eine Übersicht über alle"','"eigens für diese Welt"','"geschaffenen (Vanilla)"','"Befehle zu erhalten"']} }

scoreboard players set @s[scores={TW=1..}] TW 0
tag @s[tag=TW_Buch] remove TW_Buch

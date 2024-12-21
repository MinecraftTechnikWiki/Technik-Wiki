
$scoreboard players set @s TW $(Nummer)
$tellraw @s ["",{"translate":"Technik-Wiki-Artikel = ","color":"green","bold":true},{"text":"'","bold":true},{"text":"$(Technik)","color":"yellow","bold":true,"extra":[{"text":" ($(Nummer))"}],"hoverEvent":{"action":"show_text","contents":{"translate":"$(Technik)"} },"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:$(Wiki)"} },{"text":"'","bold":true}]

$execute if score #TW_Server TW matches 0 in minecraft:$(Welt) run teleport @s $(Teleport)
$execute if score #TW_Server TW matches 1 in technik_wiki:$(Welt) run teleport @s $(Teleport)

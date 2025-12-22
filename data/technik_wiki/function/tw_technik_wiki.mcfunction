
$scoreboard players set @s TW $(Nummer)
$tellraw @s ["",{translate:"Technik-Wiki-Artikel = ",color:"green",bold:true},{text:"'",bold:true},{text:"$(Technik)",color:"yellow",bold:true,extra:[{text:" ($(Nummer))"}],hover_event:{action:"show_text",value:{translate:"$(Technik)"} },click_event:{action:"open_url",url:"https://de.minecraft.wiki/w/Technik:$(Wiki)"} },{text:"'",bold:true}]
$execute in minecraft:$(Welt) run teleport @s $(Teleport)

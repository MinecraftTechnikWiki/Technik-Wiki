
$execute if score #TW_Server TW matches 0 in minecraft:$(Welt) run teleport @s $(X) $(Y) $(Z)
$execute if score #TW_Server TW matches 1 in technik_wiki:$(Welt) run teleport @s $(X) $(Y) $(Z)

$tellraw @s ["",{"text":"Du wurdest zu $(X), $(Y), $(Z) in $(Welt) teleportiert ","color":"gray","bold":true}]

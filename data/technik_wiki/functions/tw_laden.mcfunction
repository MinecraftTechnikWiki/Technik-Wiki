# Lädt die Technik-Wiki-Start-Funktion
function technik_wiki:tw_start

# Nachricht für erfolgreiches laden der Funktion.
tellraw @a ["",{"storage":"technik_wiki:tw_daten","nbt":"TW_Info","interpret":true},{"translate":"Technik-Wiki-Funktionen wurden geladen.","color":"green","bold":true}]

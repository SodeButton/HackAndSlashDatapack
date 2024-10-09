
scoreboard players operation #search Button.GUI.ID = @s Button.GUI.ID
execute as @e[type=chest_minecart,tag=Button.GUI] if score @s Button.GUI.ID = #search Button.GUI.ID run data remove entity @s Items

execute as @e[tag=Button.GUI] if score @s Button.GUI.ID = #search Button.GUI.ID run kill @s
scoreboard players reset @s Button.GUI.ID

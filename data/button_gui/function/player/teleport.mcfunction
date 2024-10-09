execute unless score @s Button.GUI.ID matches 0.. run function button_gui:player/open

scoreboard players operation #search Button.GUI.ID = @s Button.GUI.ID

execute at @s as @e[type=item_display,tag=Button.GUI] if score @s Button.GUI.ID = #search Button.GUI.ID run tp @s ~ ~1 ~

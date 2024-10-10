execute as @a at @s run function button_gui:player/tick
execute as @e[type=chest_minecart,tag=Button.GUI] run function button_gui:gui/tick

clear @a *[minecraft:custom_data~{"Button.GUI.Item":{}}]
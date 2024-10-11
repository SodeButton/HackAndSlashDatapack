# data modify storage button_gui:gui current set from entity @s Items

# execute on passengers run data modify storage button_gui:gui previous set from entity @s data.previous

# execute on passengers store result score #bool Button.GUI.Temp run data modify entity @s data.previous set from storage button_gui:gui current

# execute if score #bool Button.GUI.Temp matches 1 run function button_gui:gui/on_change

execute at @s run function button_gui:gui/on_change

# clear @a *[minecraft:custom_data~{"Button.GUI.Item":{}}]
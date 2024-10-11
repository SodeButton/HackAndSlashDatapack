execute if predicate button_gui:look_at_villager run function button_gui:player/teleport {"gui_name": "Test1"}
execute unless predicate button_gui:look_at_villager if score @s Button.GUI.ID.Test1 matches 0.. run function button_gui:player/close {"gui_name": "Test1"}

execute if items entity @s weapon.* *[custom_data={"Button.GUI.CheatMenu": 1b}] run function button_gui:player/teleport {"gui_name": "CheatMenu"}
execute unless items entity @s weapon.* *[custom_data={"Button.GUI.CheatMenu": 1b}] if score @s Button.GUI.ID.CheatMenu matches 0.. run function button_gui:player/close {"gui_name": "CheatMenu"}


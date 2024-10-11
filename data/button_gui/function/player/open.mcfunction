
$summon item_display ~ ~1 ~ {view_range:0f, width:0f, height:0f, teleport_duration: 0, Tags:["Button.GUI", "Button.GUI.$(gui_name)", "Button.GUI.New"], Passengers:[{id:"minecraft:chest_minecart", Invulnerable:1b, CustomNameVisible:0b, Tags:["Button.GUI", "Button.GUI.$(gui_name)", "Button.GUI.New"], CustomDisplayTile:1b, DisplayState:{Name:"minecraft:air"}, Passengers:[{id:"minecraft:marker", Tags:["Button.GUI", "Button.GUI.$(gui_name)", "Button.GUI.New"]}]}]}

scoreboard players add .global Button.GUI.ID 1
scoreboard players operation @s Button.GUI.ID = .global Button.GUI.ID
$scoreboard players operation @s Button.GUI.ID.$(gui_name) = .global Button.GUI.ID
scoreboard players operation @e[tag=Button.GUI.New] Button.GUI.ID = .global Button.GUI.ID
$scoreboard players operation @e[tag=Button.GUI.New] Button.GUI.ID.$(gui_name) = .global Button.GUI.ID

tag @e remove Button.GUI.New
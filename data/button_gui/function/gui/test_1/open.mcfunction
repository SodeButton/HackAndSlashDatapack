execute store result storage button_gui:gui id int 1 run scoreboard players get @s Button.GUI.ID

execute at @s if score @e[type=chest_minecart,sort=nearest,limit=1,tag=Button.GUI.Test1] Button.GUI.ID = @s Button.GUI.ID as @e[type=chest_minecart,sort=nearest,limit=1,tag=Button.GUI.Test1] run function button_gui:gui/test_1/pages/0/put_gui

advancement revoke @s only button_gui:interacted_gui_test1
data modify entity @s CustomName set value '{"text": "Test1"}'
data modify entity @s CustomNameVisible set value false

# GUIのアイテムをクリックしたかどうかを判定（アイテムが置換されたときの処理も追加する 置かれたアイテムをコピーして）
function button_gui:gui/test_1/pages/0/check
function button_gui:gui/test_1/pages/1/check

execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"Button.GUI.Item":{page:0}}}}}] run function button_gui:gui/test_1/pages/0/put_gui
execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"Button.GUI.Item":{page:1}}}}}] run function button_gui:gui/test_1/pages/1/put_gui

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"Button.GUI.Item":{}}}}}]

# GUI用のアイテムを削除
clear @a *[minecraft:custom_data~{"Button.GUI.Item":{}}]
data remove storage button_gui:gui isClicked
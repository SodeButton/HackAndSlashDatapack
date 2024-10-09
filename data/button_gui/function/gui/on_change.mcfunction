data modify entity @s CustomName set value '{"text": "Test1"}'
data modify entity @s CustomNameVisible set value false

function button_gui:gui/test_1/pages/0/check
function button_gui:gui/test_1/pages/1/check



# GUI用のアイテムを削除
clear @a *[minecraft:custom_data~{"Button.GUI.Item":{}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{Button.GUI.Item:{}}}}}]
data remove storage button_gui:gui isClicked
data modify entity @s[tag=Button.GUI.Test1] CustomName set value '{"text": "Test1"}'
data modify entity @s[tag=Button.GUI.CheatMenu] CustomName set value '{"text": "クリエイティブメニュー"}'

# GUIのアイテムをクリックしたかどうかを判定
function button_gui:gui/test_1/pages/0/check
function button_gui:gui/test_1/pages/1/check

function button_gui:gui/cheat_menu/pages/0/check

# GUIのアイテムがドロップしたときの処理
execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"Button.GUI.Item":{name: "Test1", page:0}}}}}] run function button_gui:gui/test_1/pages/0/put_gui
execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"Button.GUI.Item":{name: "Test1", page:1}}}}}] run function button_gui:gui/test_1/pages/1/put_gui

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"Button.GUI.Item":{}}}}}]

# GUI用のアイテムを削除
clear @a *[minecraft:custom_data~{"Button.GUI.Item":{}}]
data remove storage button_gui:gui isClicked
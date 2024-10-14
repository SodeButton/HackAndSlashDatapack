# プレイヤーの装備によって、atribluteを変更する

# 装備のチェック

scoreboard players set @s ButtonHackAndSlash.MaxHP 20

execute if items entity @s armor.head *[custom_data~{"Button.Item.MaxHP": {}}] store result score @s ButtonHackAndSlash.Temp run data get entity @s Inventory[{Slot:103b}].components."minecraft:custom_data"."Button.Item.MaxHP"."value"
scoreboard players operation @s ButtonHackAndSlash.MaxHP += @s ButtonHackAndSlash.Temp

execute store result storage button_hack_and_slash:temp ButtonHackAndSlash.MaxHP.value int 1.0 run scoreboard players get @s ButtonHackAndSlash.MaxHP

function button_hack_and_slash:player/attribute/max_hp with storage button_hack_and_slash:temp ButtonHackAndSlash.MaxHP

scoreboard players reset @s ButtonHackAndSlash.Temp
advancement revoke @s only button_hack_and_slash:changed_inventory
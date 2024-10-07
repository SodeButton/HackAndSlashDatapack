## 各プレイヤーの常時実行処理
## from tick/main.mcfunction
## execute as @a at @s run this

# プレイヤーのmainhand/offhandのデータを取得
  data modify storage button_hack_and_slash:context ItemID.Offhand set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data"."button:ItemID"
  data modify storage button_hack_and_slash:context ItemID.Mainhand set from entity @s SelectedItem.components."minecraft:custom_data"."button:ItemID"

# メインハンドとオフハンドの処理をまとめておく
  data modify storage button_hack_and_slash:context ItemID.Both set from storage button_hack_and_slash:context ItemID.Offhand
  data modify storage button_hack_and_slash:context ItemID.Both set from storage button_hack_and_slash:context ItemID.Mainhand

# アイテムの処理
  # TestBow
    execute if data storage button_hack_and_slash:context ItemID{Both:"TestBow"} run function button_hack_and_slash:weapons/test_bow/hold
    execute unless data storage button_hack_and_slash:context ItemID{Both:"TestBow"} as @s[tag=ButtonHackAndSlash.HasInteraction] run function button_hack_and_slash:weapons/test_bow/not_hold

# 使用中かどうか
  execute if score @s[scores={ButtonHackAndSlash.Using=1..}] ButtonHackAndSlash.UseEnd matches 0 run function button_hack_and_slash:release_using

# クリックを離したかにつかう
  scoreboard players set @s ButtonHackAndSlash.UseEnd 0

# ストレージをリセット
  data remove storage button_hack_and_slash:context ItemID

# アイテム使用時にスコアを増やす
  scoreboard players add @s ButtonHackAndSlash.Using 1

# 使用中
  scoreboard players set @s ButtonHackAndSlash.UseEnd 1

# リセット
  advancement revoke @s only button_hack_and_slash:using_item
  
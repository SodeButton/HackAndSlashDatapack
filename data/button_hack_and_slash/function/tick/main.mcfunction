
# 各プレイヤーで実行
  execute as @a at @s run function button_hack_and_slash:tick/player

  execute as @e[type=armor_stand, tag=ButtonHackAndSlash.TestBowArrow] positioned as @s anchored feet run function button_hack_and_slash:weapons/test_bow/main
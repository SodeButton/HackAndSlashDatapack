
# 各プレイヤーで実行
  execute as @a at @s run function button_hack_and_slash:player/tick

  execute as @e[type=item, tag=ButtonHackAndSlash.TestBowArrow] at @s anchored eyes positioned ^ ^ ^ run function button_hack_and_slash:weapons/test_bow/main

  
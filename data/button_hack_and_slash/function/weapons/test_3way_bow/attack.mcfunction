## TestBowのアタック処理
# advancementから実行される
advancement revoke @s only button_hack_and_slash:attacked_test_3way_bow

# 発射するArrowのMotion値計算

  # ベクトル計算するためのAECを(0, 0, 0)に召喚

    # execute rotated as @s positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^0.4 {Tags:["ButtonHackAndSlash.ArrowMotion"]}

    # execute at @s rotated as @s run summon area_effect_cloud ^ ^ ^1.0 {Tags:["ButtonHackAndSlash.ArrowMotion"]}
    execute at @s anchored eyes positioned ^ ^ ^ run summon marker ^ ^ ^1 {Tags:["ButtonHackAndSlash.ArrowMotion"]}
    execute anchored eyes positioned ^ ^ ^1 run data modify storage button_hack_and_slash:temp FirstPos set from entity @e[type=marker, tag=ButtonHackAndSlash.ArrowMotion, sort=nearest, limit=1] Pos
    execute anchored eyes positioned ^ ^ ^1 run kill @e[type=marker, tag=ButtonHackAndSlash.ArrowMotion, sort=nearest, limit=1]

    execute at @s anchored eyes positioned ^ ^ ^ run summon marker ^ ^ ^2 {Tags:["ButtonHackAndSlash.ArrowMotion"]}
    execute anchored eyes positioned ^ ^ ^2 run data modify storage button_hack_and_slash:temp SecondPos set from entity @e[type=marker, tag=ButtonHackAndSlash.ArrowMotion, sort=nearest, limit=1] Pos
    execute anchored eyes positioned ^ ^ ^1.0 run kill @e[type=marker, tag=ButtonHackAndSlash.ArrowMotion, sort=nearest, limit=1]

  # PlayerのPosをストレージに代入
    # data modify storage button_hack_and_slash:temp PlayerPos set from entity @s Pos

  # AECのPosをストレージに代入
    # execute positioned 0.0 0.0 0.0 run data modify storage button_hack_and_slash:temp Pos set from entity @e[type=area_effect_cloud, tag=ButtonHackAndSlash.ArrowMotion, sort=nearest, limit=1] Pos

    # execute anchored eyes positioned ^ ^ ^ run data modify storage button_hack_and_slash:temp Pos set from entity @e[type=area_effect_cloud, tag=ButtonHackAndSlash.ArrowMotion, sort=nearest, limit=1] Pos

  # ストレージに代入した値をスコアボードに代入

    execute store result score $PlayerPosX ButtonHackAndSlash.Temp run data get storage button_hack_and_slash:temp FirstPos[0] 100.0
    execute store result score $PlayerPosY ButtonHackAndSlash.Temp run data get storage button_hack_and_slash:temp FirstPos[1] 100.0
    execute store result score $PlayerPosZ ButtonHackAndSlash.Temp run data get storage button_hack_and_slash:temp FirstPos[2] 100.0

    execute store result score $VectorX ButtonHackAndSlash.Temp run data get storage button_hack_and_slash:temp SecondPos[0] 100.0
    execute store result score $VectorY ButtonHackAndSlash.Temp run data get storage button_hack_and_slash:temp SecondPos[1] 100.0
    execute store result score $VectorZ ButtonHackAndSlash.Temp run data get storage button_hack_and_slash:temp SecondPos[2] 100.0


  # ベクトル計算 (AEC - Player)
    
    scoreboard players operation $VectorX ButtonHackAndSlash.Temp -= $PlayerPosX ButtonHackAndSlash.Temp
    scoreboard players operation $VectorY ButtonHackAndSlash.Temp -= $PlayerPosY ButtonHackAndSlash.Temp
    scoreboard players operation $VectorZ ButtonHackAndSlash.Temp -= $PlayerPosZ ButtonHackAndSlash.Temp
    
  # ベクトル補正
    scoreboard players set $PowerX ButtonHackAndSlash.Temp 200
    scoreboard players set $PowerY ButtonHackAndSlash.Temp 200
    scoreboard players set $PowerZ ButtonHackAndSlash.Temp 200

    scoreboard players operation $VectorX ButtonHackAndSlash.Temp *= $PowerX ButtonHackAndSlash.Temp
    scoreboard players operation $VectorY ButtonHackAndSlash.Temp *= $PowerY ButtonHackAndSlash.Temp
    scoreboard players operation $VectorZ ButtonHackAndSlash.Temp *= $PowerZ ButtonHackAndSlash.Temp

  # 完成したベクトルをストレージに保存
    execute store result storage button_hack_and_slash:temp FirstPos[0] double 0.0001 run scoreboard players get $VectorX ButtonHackAndSlash.Temp
    execute store result storage button_hack_and_slash:temp FirstPos[1] double 0.0001 run scoreboard players get $VectorY ButtonHackAndSlash.Temp
    execute store result storage button_hack_and_slash:temp FirstPos[2] double 0.0001 run scoreboard players get $VectorZ ButtonHackAndSlash.Temp

# 発射物召喚 
  execute at @s anchored eyes positioned ^ ^ ^ positioned ~ ~ ~ run function button_hack_and_slash:weapons/bow/shot_arrow
  execute at @s anchored eyes positioned ^1 ^ ^ positioned ~ ~ ~ run function button_hack_and_slash:weapons/bow/shot_arrow
  execute at @s anchored eyes positioned ^-1 ^ ^ positioned ~ ~ ~ run function button_hack_and_slash:weapons/bow/shot_arrow

# 発射音
  execute at @s run playsound entity.arrow.shoot master

# リセット
  data remove storage button_hack_and_slash:temp Pos
  scoreboard players reset $VectorX
  scoreboard players reset $VectorY
  scoreboard players reset $VectorZ
  # scoreboard players reset $PowerX
  # scoreboard players reset $PowerY
  # scoreboard players reset $PowerZ

# 矢の常時処理 Particleとか
  particle minecraft:crit ^ ^ ^ 0 0 0 0 1
  particle minecraft:end_rod ^ ^ ^ 0 0 0 1000 1

# 矢が地面についたら削除
  execute at @s[nbt={PortalCooldown:0, OnGround:1b}] run playsound entity.arrow.hit ambient @a ~ ~ ~
  execute at @s[nbt={PortalCooldown:0, OnGround:1b}] run kill @s

# 矢の常時処理 Particleとか
  particle minecraft:crit ~ ~ ~ 0.01 0.01 0.01 0 3 force
  data modify entity @s FallDistance set value 0

# 矢が地面についたら削除
  execute at @s[nbt={PortalCooldown:0, OnGround:1b}] run playsound entity.arrow.hit ambient @a ~ ~ ~
  execute at @s[nbt={PortalCooldown:0, OnGround:1b}] run kill @s
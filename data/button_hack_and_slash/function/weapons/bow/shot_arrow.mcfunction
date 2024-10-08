# 発射物召喚
  summon item ~ ~ ~ {Tags:["ButtonHackAndSlash.TestBowArrow"], PortalCooldown:1, Invulnerable:true, Item:{id:"snowball",count:1, components:{custom_model_data:501}}, PickupDelay:32767}
  execute as @e[type=item, sort=nearest, tag=ButtonHackAndSlash.TestBowArrow,limit=1] at @s rotated as @p run tp ^ ^ ^
  data modify entity @e[type=item, sort=nearest, tag=ButtonHackAndSlash.TestBowArrow,limit=1] Motion set from storage button_hack_and_slash:temp FirstPos
  data modify entity @e[type=item, sort=nearest, tag=ButtonHackAndSlash.TestBowArrow,limit=1] Thrower set from entity @s UUID
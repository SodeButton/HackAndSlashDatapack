## テスト弓を手に持っていた時の処理
## from tick/player.mcfunction
## execute as @a at @s if data storage button_hack_and_slash:context ItemID{[Mainhand, Offhand, Both]:"Any"} run this

execute as @s[tag=ButtonHackAndSlash.HasInteraction] run kill @e[type=minecraft:interaction,tag=ButtonHackAndSlash.Interaction,sort=nearest,limit=1]
execute as @s[tag=ButtonHackAndSlash.HasInteraction] run tag @s remove ButtonHackAndSlash.HasInteraction

execute as @s[tag=!ButtonHackAndSlash.HasInteraction] run summon minecraft:interaction ~ ~ ~ {Tags:["ButtonHackAndSlash.Interaction"],height:2,width:0.6}
execute as @s[tag=!ButtonHackAndSlash.HasInteraction] run tag @s add ButtonHackAndSlash.HasInteraction

## テスト弓を手にもっていないときの処理
## from tick/player.mcfunction
## execute as @a at @s unless data storage button_hack_and_slash:context ItemID{[Mainhand, Offhand, Both]:"Any"} as @s[tag=ButtonHackAndSlash.HasInteraction] run this

kill @e[type=minecraft:interaction,tag=ButtonHackAndSlash.Interaction,sort=nearest,limit=1]
tag @s remove ButtonHackAndSlash.HasInteraction
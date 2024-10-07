## テスト弓を手に持っていた時の処理
## from tick/player.mcfunction
## execute as @a at @s if data storage button_hack_and_slash:context ItemID{Both:"TestBow"} run this

kill @e[type=minecraft:interaction,tag=ButtonHackAndSlash.Interaction,sort=nearest,limit=1]
summon minecraft:interaction ~ ~ ~ {Tags:["ButtonHackAndSlash.Interaction"],height:2,width:0.6}

tag @s add ButtonHackAndSlash.HasInteraction

# summon minecraft:interaction ~ ~ ~ {Tags:["ButtonHackAndSlash.Interaction"],height:2,width:1}


# メインハンドに持ってるものをチェック

# テスト弓
  execute if data storage button_hack_and_slash:context ItemID{Mainhand:"TestBow"} run function button_hack_and_slash:weapons/hold
  execute if data storage button_hack_and_slash:context ItemID{Mainhand:"TestBow"} run return 0
  execute unless data storage button_hack_and_slash:context ItemID{Mainhand:"TestBow"} as @s[tag=ButtonHackAndSlash.HasInteraction] run function button_hack_and_slash:weapons/not_hold

# テスト弓３way
  execute if data storage button_hack_and_slash:context ItemID{Mainhand:"Test3WayBow"} run function button_hack_and_slash:weapons/hold
  execute if data storage button_hack_and_slash:context ItemID{Mainhand:"Test3WayBow"} run return 0
  execute unless data storage button_hack_and_slash:context ItemID{Mainhand:"Test3WayBow"} as @s[tag=ButtonHackAndSlash.HasInteraction] run function button_hack_and_slash:weapons/not_hold
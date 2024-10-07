# 付近のモブを停止させる
  execute as @e[type=!player,tag=!ButtonHackAndSlash.NoAINow,nbt=!{NoAI:1b}, distance=..9] run function button_hack_and_slash:items/stop_time/stop
# モブを停止させる
  tag @s add ButtonHackAndSlash.NoAINow
  data modify entity @s NoAI set value 1b
  data modify entity @s Motion set value [0.0, 0.0, 0.0]

# ロード時にアイテムを獲得できるメッセージイベント（開発中のみ）

  tellraw @a {"text": "【アイテムを取得】", "bold": true, "color": "gold", "clickEvent": {"action": "run_command", "value": "/function button_hack_and_slash:give"}, "hoverEvent": {"action": "show_text", "contents": {"text": "右クリックて取得"}}}

# スコアの定義

  scoreboard objectives add ButtonHackAndSlash.Using dummy
  scoreboard objectives add ButtonHackAndSlash.UseEnd dummy

  scoreboard objectives add ButtonHackAndSlash.Temp dummy

  scoreboard objectives add ButtonHackAndSlash.MaxHP dummy

  function button_hack_and_slash:release_using

# オフハンドに弓を持ったら外す
  playsound entity.item.break player @s

  tellraw @s {"text": "この弓をオフハンドに持つことはできません。", "color": "red"}

  $execute if data entity @s SelectedItem run loot give @s loot button_hack_and_slash:$(id)

  execute unless data entity @s SelectedItem run item replace entity @s weapon.mainhand from entity @s weapon.offhand

  item replace entity @s weapon.offhand with air
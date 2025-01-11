tellraw @a "Pick It Up Datapack Loaded Successfully!"

scoreboard objectives add piu.raycast.length dummy
scoreboard objectives add piu.rotation.x dummy
scoreboard objectives add piu.rotation.y dummy
scoreboard objectives add piu.selected_item_slot.cur dummy
scoreboard objectives add piu.selected_item_slot.last dummy
scoreboard objectives add piu.item.count dummy
scoreboard objectives add piu.item.damage dummy

scoreboard players reset * piu.rotation.x
scoreboard players reset * piu.rotation.y

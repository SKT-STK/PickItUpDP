tellraw @a "Pick It Up Datapack Loaded Successfully!"

scoreboard objectives add piu.raycast.length dummy
scoreboard objectives add piu.rotation.x dummy
scoreboard objectives add piu.rotation.y dummy
scoreboard objectives add piu.selected_item_slot.cur dummy
scoreboard objectives add piu.selected_item_slot.last dummy
scoreboard objectives add piu.item.count dummy
scoreboard objectives add piu.item.damage dummy
scoreboard objectives add piu.id dummy

scoreboard players reset * piu.rotation.x
scoreboard players reset * piu.rotation.y

execute in piu:piu run forceload add -100 -100 100 100
execute in piu:piu run fill -100 0 -100 0 0 100 glass
execute in piu:piu run fill 1 0 -100 100 0 100 glass
execute in piu:piu run forceload remove all

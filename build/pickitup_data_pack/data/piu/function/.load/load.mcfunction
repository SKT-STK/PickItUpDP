tellraw @a "Pick It Up datapack loaded successfully!"
scoreboard objectives add piu.count.items dummy
scoreboard objectives add piu.damage dummy
scoreboard objectives add piu.CONST dummy
scoreboard objectives add piu.player.movement_speed dummy
scoreboard objectives add piu.raycast.length dummy
scoreboard players reset * piu.CONST
scoreboard players set #1 piu.CONST 1
execute in piu:forceload run function piu:.load/load/nested_execute_0

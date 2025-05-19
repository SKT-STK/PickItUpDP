data modify entity @s Item.id set from block ~ ~ ~ id
execute store result score @s piu.count.items run data get block ~ ~ ~ Items
scoreboard players operation @s piu.count.items -= #1 piu.CONST
execute in piu:forceload run forceload add 0 0
clone ~ ~ ~ ~ ~ ~ to piu:forceload 0 1 0 replace
setblock ~ ~ ~ air
execute in piu:forceload run function piu:pickup/main/nested_execute_27
item replace entity @p[tag=piu.this2] hotbar.0 from entity @s contents
item replace entity @p[tag=piu.this2] hotbar.1 from entity @s contents
item replace entity @p[tag=piu.this2] hotbar.2 from entity @s contents
item replace entity @p[tag=piu.this2] hotbar.3 from entity @s contents
item replace entity @p[tag=piu.this2] hotbar.4 from entity @s contents
item replace entity @p[tag=piu.this2] hotbar.5 from entity @s contents
item replace entity @p[tag=piu.this2] hotbar.6 from entity @s contents
item replace entity @p[tag=piu.this2] hotbar.7 from entity @s contents
item replace entity @p[tag=piu.this2] hotbar.8 from entity @s contents
item replace entity @s weapon.offhand with minecraft:air
kill @s

advancement revoke @s only piu:inv_changed
execute unless score @s piu.player.death_count matches 1.. run return -1
execute if entity @s[tag=!piu.picking_up] run return -1
tag @s remove piu.picking_up
function piu:place/killed
tag @e[type=item, tag=piu.this] remove piu.this_0
tag @e[type=item, tag=piu.this] remove piu.this_1
tag @e[type=item, tag=piu.this] remove piu.this_2
tag @e[type=item, tag=piu.this] remove piu.this_3
tag @e[type=item, tag=piu.this] remove piu.this_4
tag @e[type=item, tag=piu.this] remove piu.this_5
tag @e[type=item, tag=piu.this] remove piu.this_6
tag @e[type=item, tag=piu.this] remove piu.this_7
tag @e[type=item, tag=piu.this] remove piu.this_8
tag @e[type=item, tag=piu.this] remove piu.this_9
kill @e[type=item, tag=piu.this, nbt={Item: {components: {"minecraft:custom_data": {piu.clear: true}}}}]
execute as @e[type=item, tag=piu.this] run data modify entity @s PickupDelay set value 0
tag @e[type=item, tag=piu.this] remove piu.this
kill @e[type=item, nbt={Item: {components: {"minecraft:custom_data": {piu.picked_up: true}}}}]
execute in piu:forceload positioned 0 2 0 run function piu:inv_changed/self/nested_execute_0
scoreboard players set @s piu.player.death_count 0

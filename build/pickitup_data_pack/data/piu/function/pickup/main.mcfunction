tag @s add piu.this2
tag @s add piu.picking_up
playsound piu:blockentity.pickup master @a ~ ~ ~ 1 1
execute store result score @s piu.player.movement_speed run attribute @s minecraft:movement_speed base get 100
attribute @s minecraft:movement_speed base set 0.07
execute store result score @s piu.damage run data get entity @s SelectedItem.components."minecraft:damage"
function piu:pickup/main/macro_0 with entity @s
summon item ~ ~ ~ {Tags: ["piu.this"], Item: {id: "dirt", components: {"minecraft:custom_data": {piu.picked_up: true}, "minecraft:max_stack_size": 1}}, PickupDelay: -1}
execute as @e[type=item, tag=piu.this] run function piu:pickup/main/nested_execute_28
tag @s remove piu.this2
advancement revoke @s only piu:tick

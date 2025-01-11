data remove entity @n[tag=piu.no_clicking] interaction

scoreboard players add @s piu.raycast.length 1
execute if score @s piu.raycast.length matches 14.. run return run function piu:raycast_return

execute if block ^ ^ ^.5 #air positioned ^ ^ ^.5 run return run function piu:raycast

function piu:raycast_success_macro_rot0 with entity @s SelectedItem.components."minecraft:custom_data"."piu.block"
function piu:raycast_success_macro_rot1 with entity @s SelectedItem.components."minecraft:custom_data"."piu.block"
data modify block ~ ~ ~ Items set from entity @s SelectedItem.components."minecraft:custom_data"."piu.block".Items
kill @n[tag=piu.no_clicking]
tag @s remove piu.has_interaction
execute in piu:piu run forceload remove all
scoreboard players add @s piu.item.damage 1
execute store result storage piu:selected_item damage int 1 run scoreboard players get @s piu.item.damage
execute unless score @s piu.item.damage matches 58 run function piu:raycast_give_item with storage piu:selected_item
execute if score @s piu.item.damage matches 58 run item replace entity @s weapon.mainhand with air

scoreboard players reset @s piu.raycast.length

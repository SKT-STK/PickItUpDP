scoreboard players add %global piu.id 1
scoreboard players operation @s piu.id = %global piu.id

execute run summon item ~ ~ ~ {Owner:[I;0,0,0,0],Tags:["69a873c4-2f73-4b7f-87d9-2e23ae4a052a","piu.this"],Item:{id:"minecraft:music_disc_13",components:{"minecraft:custom_data":{piu.blockentity:1b},"minecraft:item_name":'"Block Entity"',"minecraft:custom_model_data":1001}}}
execute as @e[tag=69a873c4-2f73-4b7f-87d9-2e23ae4a052a] run data modify entity @s Item.components."minecraft:custom_data"."piu.block" set from block ~ ~ ~
tag @e[tag=69a873c4-2f73-4b7f-87d9-2e23ae4a052a] remove 69a873c4-2f73-4b7f-87d9-2e23ae4a052a
data modify entity @n[tag=piu.this] Item.components."minecraft:item_model" set string block ~ ~ ~ id
tag @n[tag=piu.this] add piu.this3
execute store result score @s piu.item.damage run data get entity @s SelectedItem.components."minecraft:damage"
item replace entity @s weapon.mainhand with air
setblock ~ ~ ~ air

execute at @s run summon interaction ~ ~1.1 ~ {Tags:["piu.no_clicking"],width:1.3,height:1.3}
tag @s add piu.has_interaction

execute in piu:piu run forceload add -100 -100 100 100
function piu:_schedule/4adfa8f5-d8a6-4348-b537-765641ff0354

playsound piu:blockentity.pickup block @a ~ ~ ~ 1
attribute @s movement_speed base set 0.5
effect give @s slowness infinite 5 true
advancement grant @s only piu:wrench

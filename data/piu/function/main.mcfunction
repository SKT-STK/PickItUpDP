scoreboard players add %global piu.id 1
scoreboard players operation @s piu.id = %global piu.id

execute run summon item ~ ~ ~ {Tags:["978e659f-4462-4c22-bb86-5c4c54f53114","piu.this"],Item:{id:"minecraft:music_disc_13",components:{"minecraft:custom_data":{piu.blockentity:1b},"minecraft:item_name":'"Block Entity"',"minecraft:custom_model_data":1001}}}
execute as @e[tag=978e659f-4462-4c22-bb86-5c4c54f53114] run data modify entity @s Item.components."minecraft:custom_data"."piu.block" set from block ~ ~ ~
tag @e[tag=978e659f-4462-4c22-bb86-5c4c54f53114] remove 978e659f-4462-4c22-bb86-5c4c54f53114
data modify entity @n[tag=piu.this] Item.components."minecraft:item_model" set string block ~ ~ ~ id
execute store result score @s piu.item.damage run data get entity @s SelectedItem.components."minecraft:damage"
item replace entity @s weapon.mainhand with air
setblock ~ ~ ~ air

execute at @s run summon interaction ~ ~1.1 ~ {Tags:["piu.no_clicking"],width:1.3,height:1.3}
tag @s add piu.has_interaction

execute in piu:piu run forceload add -100 -100 100 100
execute in piu:piu positioned 0 1 0 run summon armor_stand ~ ~ ~ {Tags:["073849a7-978a-44f8-af78-0b0a3fd84717","piu.spread","piu.this2"]}
execute as @e[tag=073849a7-978a-44f8-af78-0b0a3fd84717] run scoreboard players operation @s piu.id = %global piu.id
tag @e[tag=073849a7-978a-44f8-af78-0b0a3fd84717] remove 073849a7-978a-44f8-af78-0b0a3fd84717
execute in piu:piu run spreadplayers 0 0 1 100 false @e[tag=piu.this2]
execute in piu:piu as @e[tag=piu.this2] at @s run setblock ~ ~ ~ decorated_pot
execute at @e[tag=piu.this2] as @e[tag=piu.this] run data modify block ~ ~ ~ item set from entity @s Item
execute at @e[tag=piu.this2] run item replace entity @s weapon.mainhand from block ~ ~ ~ container.0
kill @n[tag=piu.this]
tag @e[tag=piu.this2] remove piu.this2

attribute @s movement_speed base set 0.5
effect give @s slowness infinite 5 true

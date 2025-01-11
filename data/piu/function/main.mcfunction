execute run summon item ~ ~ ~ {Tags:["2fc5106e-3609-4660-9a8c-ad165debe5dd","piu.this"],Item:{id:"minecraft:music_disc_13",components:{"minecraft:custom_data":{piu.blockentity:1b},"minecraft:item_name":'"Block Entity"',"minecraft:custom_model_data":1001}}}
execute as @e[tag=2fc5106e-3609-4660-9a8c-ad165debe5dd] run data modify entity @s Item.components."minecraft:custom_data"."piu.block" set from block ~ ~ ~
tag @e[tag=2fc5106e-3609-4660-9a8c-ad165debe5dd] remove 2fc5106e-3609-4660-9a8c-ad165debe5dd
data modify entity @n[tag=piu.this] Item.components."minecraft:item_model" set string block ~ ~ ~ id
execute store result score @s piu.item.damage run data get entity @s SelectedItem.components."minecraft:damage"
item replace entity @s weapon.mainhand with air
setblock ~ ~ ~ air
execute at @s run summon interaction ~ ~1.1 ~ {Tags:["piu.no_clicking"],width:1.3,height:1.3}
tag @s add piu.has_interaction
execute in piu:piu run forceload add 0 0
execute in piu:piu run setblock 0 0 0 decorated_pot replace
execute in piu:piu run data modify block 0 0 0 item set from entity @n[tag=piu.this] Item
kill @n[tag=piu.this]
execute in piu:piu run item replace entity @s weapon.mainhand from block 0 0 0 container.0

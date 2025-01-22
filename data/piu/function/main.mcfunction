scoreboard players add %global piu.id 1
scoreboard players operation @s piu.id = %global piu.id

execute run summon item ~ ~ ~ {Owner:[I;0,0,0,0],Tags:["9215ae60-d341-4b34-9c0d-0fd05c7b93a1","piu.this"],Item:{id:"minecraft:music_disc_13",components:{"minecraft:custom_data":{piu.blockentity:1b},"minecraft:item_name":'"Block Entity"',"minecraft:custom_model_data":1001}}}
execute as @e[tag=9215ae60-d341-4b34-9c0d-0fd05c7b93a1] run data modify entity @s Item.components."minecraft:custom_data"."piu.block" set from block ~ ~ ~
tag @e[tag=9215ae60-d341-4b34-9c0d-0fd05c7b93a1] remove 9215ae60-d341-4b34-9c0d-0fd05c7b93a1
data modify entity @n[tag=piu.this] Item.components."minecraft:item_model" set string block ~ ~ ~ id
execute store result score @s piu.item.damage run data get entity @s SelectedItem.components."minecraft:damage"
item replace entity @s weapon.mainhand with air
setblock ~ ~ ~ air

execute at @s run summon interaction ~ ~1.1 ~ {Tags:["piu.no_clicking"],width:1.3,height:1.3}
tag @s add piu.has_interaction

execute in piu:piu run forceload add -100 -100 100 100
function piu:_schedule/2c28c7d1-791d-437d-8116-a2fa35c19373

attribute @s movement_speed base set 0.5
effect give @s slowness infinite 5 true
advancement grant @s only piu:wrench

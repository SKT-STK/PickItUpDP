execute store result storage piu:selected_item slot int 1 run scoreboard players get @s piu.selected_item_slot.last
function piu:change_slot_macro with storage piu:selected_item
scoreboard players operation %search piu.id = @s piu.id
execute as @e[tag=piu.spread] if score @s piu.id = %search piu.id run tag @s add piu.this
execute at @e[tag=piu.this] run item replace entity @s weapon.mainhand from block ~ ~ ~ container.0
tag @e[tag=piu.this] remove piu.this

execute store result score @s piu.item.count run clear @s music_disc_13[minecraft:item_name='"Block Entity"'] 0
execute if score @s piu.item.count matches 2.. run clear @s music_disc_13[minecraft:item_name='"Block Entity"']

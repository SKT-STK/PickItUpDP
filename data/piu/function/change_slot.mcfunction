execute store result storage piu:selected_item slot int 1 run scoreboard players get @s piu.selected_item_slot.last
function piu:change_slot_macro with storage piu:selected_item
execute in piu:piu run item replace entity @s weapon.mainhand from block 0 0 0 container.0

execute store result score @s piu.item.count run clear @s music_disc_13[minecraft:item_name='"Block Entity"'] 0
execute if score @s piu.item.count matches 2.. run clear @s music_disc_13[minecraft:item_name='"Block Entity"']

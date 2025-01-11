execute store result score @s piu.selected_item_slot.cur run data get entity @s SelectedItemSlot

execute unless score @s piu.selected_item_slot.cur = @s piu.selected_item_slot.last run function piu:change_slot

execute store result score @s piu.selected_item_slot.last run data get entity @s SelectedItemSlot

execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{piu.blockentity:1b}},Slot:-106b}]}] run function piu:offhand_slot

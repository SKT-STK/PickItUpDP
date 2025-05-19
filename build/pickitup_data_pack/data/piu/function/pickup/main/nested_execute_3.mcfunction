data modify block 0 0 0 item set from block 0 1 0 Items[3]
function piu:_/pickup/main/macro with block 0 0 0
data modify entity @s Item.components."minecraft:container"[3].slot set from block 0 1 0 Items[3].Slot

data modify block 0 0 0 item set from block 0 1 0 Items[1]
function piu:_/pickup/main/macro with block 0 0 0
data modify entity @s Item.components."minecraft:container"[1].slot set from block 0 1 0 Items[1].Slot

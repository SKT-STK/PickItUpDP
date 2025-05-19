advancement revoke @s only piu:placed
execute if entity @s[tag=!piu.picking_up] run return -1
execute store result storage piu:piu movement_speed double 0.01 run scoreboard players get @s piu.player.movement_speed
function piu:place/main/macro_1 with storage piu:piu
summon item ~ ~ ~ {Tags: ["piu.this_0", "piu.this"], Item: {id: "dirt"}, PickupDelay: -1}
summon item ~ ~ ~ {Tags: ["piu.this_1", "piu.this"], Item: {id: "dirt"}, PickupDelay: -1}
summon item ~ ~ ~ {Tags: ["piu.this_2", "piu.this"], Item: {id: "dirt"}, PickupDelay: -1}
summon item ~ ~ ~ {Tags: ["piu.this_3", "piu.this"], Item: {id: "dirt"}, PickupDelay: -1}
summon item ~ ~ ~ {Tags: ["piu.this_4", "piu.this"], Item: {id: "dirt"}, PickupDelay: -1}
summon item ~ ~ ~ {Tags: ["piu.this_5", "piu.this"], Item: {id: "dirt"}, PickupDelay: -1}
summon item ~ ~ ~ {Tags: ["piu.this_6", "piu.this"], Item: {id: "dirt"}, PickupDelay: -1}
summon item ~ ~ ~ {Tags: ["piu.this_7", "piu.this"], Item: {id: "dirt"}, PickupDelay: -1}
summon item ~ ~ ~ {Tags: ["piu.this_8", "piu.this"], Item: {id: "dirt"}, PickupDelay: -1}
summon item ~ ~ ~ {Tags: ["piu.this_9", "piu.this"], Item: {id: "dirt"}, PickupDelay: -1}
function piu:place/main/macro_0 with entity @s
item replace entity @s hotbar.0 from entity @n[tag=piu.this_0] contents
item replace entity @s hotbar.1 from entity @n[tag=piu.this_1] contents
item replace entity @s hotbar.2 from entity @n[tag=piu.this_2] contents
item replace entity @s hotbar.3 from entity @n[tag=piu.this_3] contents
item replace entity @s hotbar.4 from entity @n[tag=piu.this_4] contents
item replace entity @s hotbar.5 from entity @n[tag=piu.this_5] contents
item replace entity @s hotbar.6 from entity @n[tag=piu.this_6] contents
item replace entity @s hotbar.7 from entity @n[tag=piu.this_7] contents
item replace entity @s hotbar.8 from entity @n[tag=piu.this_8] contents
item replace entity @s weapon.offhand from entity @n[tag=piu.this_9] contents
clear @s dirt[custom_data={piu.clear: true}]
kill @e[tag=piu.this]
tag @s remove piu.picking_up
playsound piu:blockentity.place master @a ~ ~ ~ 1 1

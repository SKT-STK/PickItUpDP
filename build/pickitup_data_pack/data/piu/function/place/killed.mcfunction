execute store result storage piu:piu attributes.movement_speed double 0.01 run scoreboard players get @s piu.player.attributes.movement_speed
execute store result storage piu:piu attributes.mining_speed double 0.01 run scoreboard players get @s piu.player.attributes.mining_speed
function piu:place/killed/macro_1 with storage piu:piu attributes
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
function piu:place/killed/macro_0 with entity @s

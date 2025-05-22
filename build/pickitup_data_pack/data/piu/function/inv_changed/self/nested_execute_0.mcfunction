forceload add 0 0
setblock ~ ~ ~ chest
function piu:inv_changed/self/macro_0 with entity @s
setblock ~ ~ ~ air destroy
tp @e[type=item, distance=..100] @s
forceload remove 0 0

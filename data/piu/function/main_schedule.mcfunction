execute in piu:piu positioned 0 1 0 run summon armor_stand ~ ~ ~ {Tags:["dda08535-ce2b-471e-b77c-3d492c5eae97","piu.spread","piu.this2"]}
execute as @e[tag=dda08535-ce2b-471e-b77c-3d492c5eae97] run scoreboard players operation @s piu.id = %global piu.id
tag @e[tag=dda08535-ce2b-471e-b77c-3d492c5eae97] remove dda08535-ce2b-471e-b77c-3d492c5eae97
execute in piu:piu run spreadplayers 0 0 1 100 false @e[tag=piu.this2]
execute at @e[tag=piu.this2] run setblock ~ ~ ~ minecraft:decorated_pot replace
execute at @e[tag=piu.this2] as @e[tag=piu.this] run data modify block ~ ~ ~ item set from entity @s Item
execute at @e[tag=piu.this2] run item replace entity @s weapon.mainhand from block ~ ~ ~ container.0
execute at @s run kill @n[tag=piu.this]
tag @e[tag=piu.this2] remove piu.this2

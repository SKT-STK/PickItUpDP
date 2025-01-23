execute in piu:piu positioned 0 1 0 run summon armor_stand ~ ~ ~ {Tags:["3ea21ba0-59fc-4326-8ca5-0e1f73ff65ae","piu.spread","piu.this2"]}
execute as @e[tag=3ea21ba0-59fc-4326-8ca5-0e1f73ff65ae] run scoreboard players operation @s piu.id = %global piu.id
tag @e[tag=3ea21ba0-59fc-4326-8ca5-0e1f73ff65ae] remove 3ea21ba0-59fc-4326-8ca5-0e1f73ff65ae
execute in piu:piu run spreadplayers 0 0 1 100 false @e[tag=piu.this2]
execute at @e[tag=piu.this2] run setblock ~ ~ ~ minecraft:decorated_pot replace
execute at @e[tag=piu.this2] as @e[tag=piu.this3] run data modify block ~ ~ ~ item set from entity @s Item
execute at @e[tag=piu.this2] run item replace entity @s weapon.mainhand from block ~ ~ ~ container.0
kill @e[tag=piu.this3]
tag @e[tag=piu.this2] remove piu.this2

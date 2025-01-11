item replace entity @s weapon.offhand from entity @s weapon.mainhand
scoreboard players operation %search piu.id = @s piu.id
execute as @e[tag=piu.spread] if score @s piu.id = %search piu.id run tag @s add piu.this
execute at @e[tag=piu.this] run item replace entity @s weapon.mainhand from block ~ ~ ~ container.0
tag @e[tag=piu.this] remove piu.this

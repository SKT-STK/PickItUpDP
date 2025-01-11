execute as @a[tag=piu.has_interaction] at @s positioned ~ ~1.1 ~ run tp @n[tag=piu.no_clicking] ^ ^ ^0.3
execute as @e[tag=piu.no_clicking,nbt={interaction:{}}] at @s as @p[tag=piu.has_interaction] at @s anchored eyes run function piu:raycast

execute as @a[tag=piu.has_interaction] at @s run function piu:selected_item_slot
execute if entity @a[tag=piu.has_interaction] as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{piu.blockentity:1b}}}}] run function piu:thrown_slot

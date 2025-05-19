scoreboard players add @s piu.raycast.length 1
execute if score @s piu.raycast.length matches 50.. run return -1
execute if data block ~ ~ ~ Items run return run data remove block ~ ~ ~ Items[{components: {"minecraft:custom_data": {piu.picked_up: true}}}]
execute if predicate {'condition': 'minecraft:entity_properties', 'entity': 'this', 'predicate': {'type_specific': {'type': 'minecraft:player', 'looking_at': {'type': '#piu:containers'}}}} align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=#piu:containers, distance=..1] run return run data remove entity @s Items[{components: {"minecraft:custom_data": {piu.picked_up: true}}}]
execute positioned ^ ^ ^0.1 run function piu:_/inv_changed/tick/raycast

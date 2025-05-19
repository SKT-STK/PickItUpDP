execute if entity @s[tag=!piu.picking_up] run return -1
advancement revoke @s only piu:tick
execute as @e[type=item, nbt={Item: {components: {"minecraft:custom_data": {piu.picked_up: true}}}}] run function piu:inv_changed/tick/nested_execute_0
execute if items entity @s weapon.offhand * run function piu:inv_changed/tick/nested_execute_1
scoreboard players reset @s piu.raycast.length
execute anchored eyes positioned ^ ^ ^ run function piu:_/inv_changed/tick/raycast
execute if items entity @s inventory.0 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.0 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.1 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.1 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.2 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.2 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.3 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.3 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.4 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.4 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.5 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.5 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.6 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.6 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.7 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.7 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.8 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.8 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.9 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.9 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.10 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.10 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.11 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.11 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.12 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.12 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.13 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.13 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.14 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.14 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.15 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.15 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.16 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.16 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.17 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.17 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.18 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.18 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.19 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.19 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.20 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.20 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.21 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.21 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.22 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.22 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.23 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.23 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.24 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.24 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.25 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.25 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
execute if items entity @s inventory.26 #piu:pickupables[custom_data={piu.picked_up: true}] run item modify entity @s inventory.26 {'function': 'minecraft:set_components', 'components': {'minecraft:custom_data': {'piu.clear': True}}}
clear @s #piu:pickupables[custom_data={piu.clear: true}]
execute unless items entity @s hotbar.0 #piu:pickupables[custom_data={piu.picked_up: true}] run function piu:inv_changed/tick/nested_execute_2
execute unless items entity @s hotbar.1 #piu:pickupables[custom_data={piu.picked_up: true}] run function piu:inv_changed/tick/nested_execute_3
execute unless items entity @s hotbar.2 #piu:pickupables[custom_data={piu.picked_up: true}] run function piu:inv_changed/tick/nested_execute_4
execute unless items entity @s hotbar.3 #piu:pickupables[custom_data={piu.picked_up: true}] run function piu:inv_changed/tick/nested_execute_5
execute unless items entity @s hotbar.4 #piu:pickupables[custom_data={piu.picked_up: true}] run function piu:inv_changed/tick/nested_execute_6
execute unless items entity @s hotbar.5 #piu:pickupables[custom_data={piu.picked_up: true}] run function piu:inv_changed/tick/nested_execute_7
execute unless items entity @s hotbar.6 #piu:pickupables[custom_data={piu.picked_up: true}] run function piu:inv_changed/tick/nested_execute_8
execute unless items entity @s hotbar.7 #piu:pickupables[custom_data={piu.picked_up: true}] run function piu:inv_changed/tick/nested_execute_9
execute unless items entity @s hotbar.8 #piu:pickupables[custom_data={piu.picked_up: true}] run function piu:inv_changed/tick/nested_execute_10

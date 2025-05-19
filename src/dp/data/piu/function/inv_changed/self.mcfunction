# item_modifier = {
#   function: 'minecraft:set_components',
#   components: {
#     'minecraft:custom_data': {
#       'piu.clear': true
#     }
#   }
# }


advancement revoke @s only piu:inv_changed
# execute if entity @s[tag=!piu.picking_up] run return -1


# # for i in range(0, 27):
# #   execute if items entity @s f'inventory.{i}' #piu:pickupables[custom_data={piu.picked_up:true}] run item modify entity @s f'inventory.{i}' item_modifier

# # clear @s #piu:pickupables[custom_data={piu.clear:true}]

# # for i in range(0, 9):
# #   execute unless items entity @s f'hotbar.{i}' #piu:pickupables[custom_data={piu.picked_up:true}]:
# #     summon item ~ ~ ~ {Tags:["piu.this"],Item:{id:dirt}}
# #     item replace entity @n[type=item,tag=piu.this] contents from entity @s f'hotbar.{i}'
# #     tag @e[type=item,tag=piu.this] remove piu.this
# #     execute if items entity @s hotbar.0 #piu:pickupables[custom_data={piu.picked_up:true}] run item replace entity @s f'hotbar.{i}' from entity @s hotbar.0
# #     execute unless items entity @s hotbar.0 #piu:pickupables[custom_data={piu.picked_up:true}] run item replace entity @s f'hotbar.{i}' from entity @s hotbar.1

LOOKING_AT_PREDICATE = {
  condition: 'minecraft:entity_properties',
  entity: 'this',
  predicate: {
    type_specific: {
      type: 'minecraft:player',
      looking_at: {
        type: '#piu:containers'
      }
    }
  }
}

ITEM_MODIFIER = {
  function: 'minecraft:set_components',
  components: {
    'minecraft:custom_data': {
      'piu.clear': true
    }
  }
}


execute if entity @s[tag=!piu.picking_up] run return -1
advancement revoke @s only piu:tick


execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{piu.picked_up:true}}}}]:
  data modify entity @s Owner set from entity @s Thrower
  data modify entity @s PickupDelay set value 0

execute if items entity @s weapon.offhand *:
  item replace entity @s weapon.mainhand from entity @s weapon.offhand
  item replace entity @s weapon.offhand with minecraft:air


function piu:_/inv_changed/tick/raycast:
  scoreboard players add @s piu.raycast.length 1
  execute if score @s piu.raycast.length matches 50.. run return -1

  execute if data block ~ ~ ~ Items run return run data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{piu.picked_up:true}}}]
  execute if predicate LOOKING_AT_PREDICATE align xyz positioned ~.5 ~.5 ~.5 as @n[type=#piu:containers,distance=..1] run return run data remove entity @s Items[{components:{"minecraft:custom_data":{piu.picked_up:true}}}]

  execute positioned ^ ^ ^.1 run function piu:_/inv_changed/tick/raycast

scoreboard players reset @s piu.raycast.length
execute anchored eyes run function piu:_/inv_changed/tick/raycast

for i in range(0, 27):
  execute if items entity @s f'inventory.{i}' #piu:pickupables[custom_data={piu.picked_up:true}] run item modify entity @s f'inventory.{i}' ITEM_MODIFIER

clear @s #piu:pickupables[custom_data={piu.clear:true}]

for i in range(0, 9):
  execute unless items entity @s f'hotbar.{i}' #piu:pickupables[custom_data={piu.picked_up:true}]:
    summon item ~ ~ ~ {Tags:["piu.this"],Item:{id:dirt}}
    item replace entity @n[type=item,tag=piu.this] contents from entity @s f'hotbar.{i}'
    tag @e[type=item,tag=piu.this] remove piu.this
    execute if items entity @s hotbar.0 #piu:pickupables[custom_data={piu.picked_up:true}] run item replace entity @s f'hotbar.{i}' from entity @s hotbar.0
    execute unless items entity @s hotbar.0 #piu:pickupables[custom_data={piu.picked_up:true}] run item replace entity @s f'hotbar.{i}' from entity @s hotbar.1

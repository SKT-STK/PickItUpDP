function piu:_/pickup/main/macro:
  $data modify entity @s Item.components."minecraft:container" append value {slot:200,item:$(item)}

tag @s add piu.this2
tag @s add piu.picking_up

playsound piu:blockentity.pickup master @a ~ ~ ~ 1 1

execute store result score @s piu.player.movement_speed run attribute @s minecraft:movement_speed base get 100
attribute @s minecraft:movement_speed base set 0.07

execute store result score @s piu.damage run data get entity @s SelectedItem.components."minecraft:damage"
function(with entity @s):
  $data modify storage piu:piu "$(UUID)".items insert 0 from entity @s Inventory[{Slot:0b}]
  $execute unless items entity @s hotbar.0 * run data modify storage piu:piu "$(UUID)".items insert 0 value {id:dirt,components:{"minecraft:custom_data":{piu.clear:true}}}
  $data modify storage piu:piu "$(UUID)".items insert 1 from entity @s Inventory[{Slot:1b}]
  $execute unless items entity @s hotbar.1 * run data modify storage piu:piu "$(UUID)".items insert 1 value {id:dirt,components:{"minecraft:custom_data":{piu.clear:true}}}
  $data modify storage piu:piu "$(UUID)".items insert 2 from entity @s Inventory[{Slot:2b}]
  $execute unless items entity @s hotbar.2 * run data modify storage piu:piu "$(UUID)".items insert 2 value {id:dirt,components:{"minecraft:custom_data":{piu.clear:true}}}
  $data modify storage piu:piu "$(UUID)".items insert 3 from entity @s Inventory[{Slot:3b}]
  $execute unless items entity @s hotbar.3 * run data modify storage piu:piu "$(UUID)".items insert 3 value {id:dirt,components:{"minecraft:custom_data":{piu.clear:true}}}
  $data modify storage piu:piu "$(UUID)".items insert 4 from entity @s Inventory[{Slot:4b}]
  $execute unless items entity @s hotbar.4 * run data modify storage piu:piu "$(UUID)".items insert 4 value {id:dirt,components:{"minecraft:custom_data":{piu.clear:true}}}
  $data modify storage piu:piu "$(UUID)".items insert 5 from entity @s Inventory[{Slot:5b}]
  $execute unless items entity @s hotbar.5 * run data modify storage piu:piu "$(UUID)".items insert 5 value {id:dirt,components:{"minecraft:custom_data":{piu.clear:true}}}
  $data modify storage piu:piu "$(UUID)".items insert 6 from entity @s Inventory[{Slot:6b}]
  $execute unless items entity @s hotbar.6 * run data modify storage piu:piu "$(UUID)".items insert 6 value {id:dirt,components:{"minecraft:custom_data":{piu.clear:true}}}
  $data modify storage piu:piu "$(UUID)".items insert 7 from entity @s Inventory[{Slot:7b}]
  $execute unless items entity @s hotbar.7 * run data modify storage piu:piu "$(UUID)".items insert 7 value {id:dirt,components:{"minecraft:custom_data":{piu.clear:true}}}
  $data modify storage piu:piu "$(UUID)".items insert 8 from entity @s Inventory[{Slot:8b}]
  $execute unless items entity @s hotbar.8 * run data modify storage piu:piu "$(UUID)".items insert 8 value {id:dirt,components:{"minecraft:custom_data":{piu.clear:true}}}
  $data modify storage piu:piu "$(UUID)".items insert 9 from entity @s Inventory[{Slot:-106b}]
  $execute unless items entity @s weapon.offhand * run data modify storage piu:piu "$(UUID)".items insert 9 value {id:dirt,components:{"minecraft:custom_data":{piu.clear:true}}}
  $execute store result storage piu:piu "$(UUID)".items[{components:{"minecraft:item_model":"piu:wrench"}}].components."minecraft:damage" int 1 run scoreboard players operation @s piu.damage += #1 piu.CONST
  $execute if score @s piu.damage matches 58 run data modify storage piu:piu "$(UUID)".items[{components:{"minecraft:item_model":"piu:wrench"}}] set value {id:dirt,components:{"minecraft:custom_data":{piu.clear:true}}}

summon item ~ ~ ~ {Tags:["piu.this"],Item:{id:dirt,components:{"minecraft:custom_data":{piu.picked_up:true},"minecraft:max_stack_size":1}},PickupDelay:-1}
execute as @e[type=item,tag=piu.this]:
  data modify entity @s Item.id set from block ~ ~ ~ id

  execute store result score @s piu.count.items run data get block ~ ~ ~ Items
  scoreboard players operation @s piu.count.items -= #1 piu.CONST

  execute in piu:forceload run forceload add 0 0
  clone ~ ~ ~ ~ ~ ~ to piu:forceload 0 1 0 replace
  setblock ~ ~ ~ air
  execute in piu:forceload:
    for i in range(0, 27):
      execute if score @s piu.count.items matches f'{i}..':
        data modify block 0 0 0 item set from block 0 1 0 Items[i]
        function piu:_/pickup/main/macro with block 0 0 0
        data modify entity @s Item.components."minecraft:container"[i].slot set from block 0 1 0 Items[i].Slot
    forceload remove 0 0

  for i in range(0, 9):
    item replace entity @p[tag=piu.this2] f'hotbar.{i}' from entity @s contents
  item replace entity @s weapon.offhand with minecraft:air
  kill @s

tag @s remove piu.this2
advancement revoke @s only piu:tick

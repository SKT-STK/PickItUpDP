advancement revoke @s only piu:inv_changed
execute unless score @s piu.player.death_count matches 1.. run return -1
execute if entity @s[tag=!piu.picking_up] run return -1

tag @s remove piu.picking_up
function piu:place/killed
for i in range(0, 10):
  tag @e[type=item,tag=piu.this] remove f'piu.this_{i}'
kill @e[type=item,tag=piu.this,nbt={Item:{components:{"minecraft:custom_data":{piu.clear:true}}}}]
execute as @e[type=item,tag=piu.this] run data modify entity @s PickupDelay set value 0
tag @e[type=item,tag=piu.this] remove piu.this

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{piu.picked_up:true}}}}]

execute in piu:forceload positioned 0 2 0:
  forceload add 0 0
  setblock ~ ~ ~ chest
  function(with entity @s):
    $data modify block ~ ~ ~ Items set from storage piu:piu "$(UUID)".original_container
  setblock ~ ~ ~ air destroy
  tp @e[type=item,distance=..100] @s
  forceload remove 0 0

scoreboard players set @s piu.player.death_count 0

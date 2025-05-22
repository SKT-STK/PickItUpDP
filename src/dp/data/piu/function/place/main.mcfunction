advancement revoke @s only piu:placed
execute if entity @s[tag=!piu.picking_up] run return -1

function piu:place/killed

for i in range(0, 9):
  item replace entity @s f'hotbar.{i}' from entity @n[type=item,tag=f'piu.this_{i}'] contents
item replace entity @s weapon.offhand from entity @n[tag=piu.this_9] contents
clear @s dirt[custom_data={piu.clear:true}]

kill @e[tag=piu.this]
tag @s remove piu.picking_up

playsound piu:blockentity.place master @a ~ ~ ~ 1 1

advancement revoke @s only piu:placed
execute if entity @s[tag=!piu.picking_up] run return -1
function piu:place/killed
item replace entity @s hotbar.0 from entity @n[type=item, tag=piu.this_0] contents
item replace entity @s hotbar.1 from entity @n[type=item, tag=piu.this_1] contents
item replace entity @s hotbar.2 from entity @n[type=item, tag=piu.this_2] contents
item replace entity @s hotbar.3 from entity @n[type=item, tag=piu.this_3] contents
item replace entity @s hotbar.4 from entity @n[type=item, tag=piu.this_4] contents
item replace entity @s hotbar.5 from entity @n[type=item, tag=piu.this_5] contents
item replace entity @s hotbar.6 from entity @n[type=item, tag=piu.this_6] contents
item replace entity @s hotbar.7 from entity @n[type=item, tag=piu.this_7] contents
item replace entity @s hotbar.8 from entity @n[type=item, tag=piu.this_8] contents
item replace entity @s weapon.offhand from entity @n[tag=piu.this_9] contents
clear @s dirt[custom_data={piu.clear: true}]
kill @e[tag=piu.this]
tag @s remove piu.picking_up
playsound piu:blockentity.place master @a ~ ~ ~ 1 1

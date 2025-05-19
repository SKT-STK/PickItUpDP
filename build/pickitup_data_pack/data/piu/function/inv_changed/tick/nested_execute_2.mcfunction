summon item ~ ~ ~ {Tags: ["piu.this"], Item: {id: "dirt"}}
item replace entity @n[type=item, tag=piu.this] contents from entity @s hotbar.0
tag @e[type=item, tag=piu.this] remove piu.this
execute if items entity @s hotbar.0 #piu:pickupables[custom_data={piu.picked_up: true}] run item replace entity @s hotbar.0 from entity @s hotbar.0
execute unless items entity @s hotbar.0 #piu:pickupables[custom_data={piu.picked_up: true}] run item replace entity @s hotbar.0 from entity @s hotbar.1

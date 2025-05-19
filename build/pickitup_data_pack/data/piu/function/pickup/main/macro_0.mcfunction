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

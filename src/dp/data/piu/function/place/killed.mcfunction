execute store result storage piu:piu attributes.movement_speed double 0.01 run scoreboard players get @s piu.player.attributes.movement_speed
execute store result storage piu:piu attributes.mining_speed double 0.01 run scoreboard players get @s piu.player.attributes.mining_speed
function(with storage piu:piu attributes):
  $attribute @s minecraft:movement_speed base set $(movement_speed)
  $attribute @s minecraft:block_break_speed base set $(mining_speed)

for i in range(0, 10):
  summon item ~ ~ ~ {Tags:[f"piu.this_{i}","piu.this"],Item:{id:dirt},PickupDelay:-1}

function(with entity @s):
  $data modify entity @n[type=item,tag=piu.this_0] Item set from storage piu:piu "$(UUID)".items[0]
  $data modify entity @n[type=item,tag=piu.this_1] Item set from storage piu:piu "$(UUID)".items[1]
  $data modify entity @n[type=item,tag=piu.this_2] Item set from storage piu:piu "$(UUID)".items[2]
  $data modify entity @n[type=item,tag=piu.this_3] Item set from storage piu:piu "$(UUID)".items[3]
  $data modify entity @n[type=item,tag=piu.this_4] Item set from storage piu:piu "$(UUID)".items[4]
  $data modify entity @n[type=item,tag=piu.this_5] Item set from storage piu:piu "$(UUID)".items[5]
  $data modify entity @n[type=item,tag=piu.this_6] Item set from storage piu:piu "$(UUID)".items[6]
  $data modify entity @n[type=item,tag=piu.this_7] Item set from storage piu:piu "$(UUID)".items[7]
  $data modify entity @n[type=item,tag=piu.this_8] Item set from storage piu:piu "$(UUID)".items[8]
  $data modify entity @n[type=item,tag=piu.this_9] Item set from storage piu:piu "$(UUID)".items[9]

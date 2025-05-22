tellraw @a "Pick It Up datapack loaded successfully!"

scoreboard objectives add piu.count.items dummy
scoreboard objectives add piu.damage dummy
scoreboard objectives add piu.CONST dummy
scoreboard objectives add piu.player.attributes.movement_speed dummy
scoreboard objectives add piu.player.attributes.mining_speed dummy
scoreboard objectives add piu.raycast.length dummy
scoreboard objectives add piu.player.death_count deathCount

scoreboard players reset * piu.CONST

scoreboard players set $1 piu.CONST 1

execute in piu:forceload:
  forceload add 0 0
  setblock 0 0 0 decorated_pot replace
  forceload remove 0 0

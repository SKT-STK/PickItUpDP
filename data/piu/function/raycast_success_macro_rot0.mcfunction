execute store result score @s piu.rotation.x run data get entity @s Rotation[0]

$execute if score @s piu.rotation.x matches 136..180 run setblock ~ ~ ~ $(id)[facing=south]
$execute if score @s piu.rotation.x matches -180..-135 run setblock ~ ~ ~ $(id)[facing=south]

$execute if score @s piu.rotation.x matches -134..-45 run setblock ~ ~ ~ $(id)[facing=west]

$execute if score @s piu.rotation.x matches -44..-0 run setblock ~ ~ ~ $(id)[facing=north]
$execute if score @s piu.rotation.x matches 0..45 run setblock ~ ~ ~ $(id)[facing=north]

$execute if score @s piu.rotation.x matches 46..135 run setblock ~ ~ ~ $(id)[facing=east]

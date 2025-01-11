execute store result score @s piu.rotation.y run data get entity @s Rotation[1]

$execute if score @s piu.rotation.y matches ..-45 run setblock ~ ~ ~ $(id)[facing=down] replace

$execute if score @s piu.rotation.y matches 45.. run setblock ~ ~ ~ $(id)[facing=up] replace

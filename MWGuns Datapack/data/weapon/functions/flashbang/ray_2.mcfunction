##################### Ray #####################

execute if entity @e[type=armor_stand,tag=flashbang,distance=..1] run tag @s add can_see

execute positioned ^ ^ ^0.5 if block ~ ~ ~ #raythru run function weapon:flashbang/ray_2

### - The quickest and most efficient ray in the Wild West XD

execute positioned ^ ^ ^0.5 if entity @e[type=area_effect_cloud,tag=ray,distance=..0.7] run tag @s add ray_d
execute positioned ^ ^ ^0.5 unless entity @e[type=area_effect_cloud,tag=ray,distance=..0.5] if block ~ ~ ~ #raythru run function weapon:quick_ray

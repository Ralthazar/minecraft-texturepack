##################### Quick Ray #####################

execute positioned ^ ^ ^0.5 if entity @e[type=area_effect_cloud,tag=target,distance=..0.5] run tag @s add damage
execute positioned ^ ^ ^0.5 unless entity @e[type=area_effect_cloud,tag=target,distance=..0.5] if block ~ ~ ~ #raythru run function weapon:bazooka/quickray

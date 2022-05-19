##################### Explode #####################

summon area_effect_cloud ^ ^ ^-1.55 {Tags:["target"]}
execute as @e[type=!#weapon:non-use,distance=..6] at @s anchored eyes facing entity @e[type=area_effect_cloud,tag=target,sort=nearest,limit=1] eyes run function weapon:grenade/ray

execute as @e[distance=..6,type=!#weapon:non-use,tag=damage] run function weapon:grenade/damage

particle minecraft:explosion_emitter ~ ~ ~ 1.5 1.5 1.5 0 25 force @a
particle minecraft:flame ~ ~ ~ 0.7 0.7 0.7 0.7 100 force @a

particle minecraft:campfire_signal_smoke ~ ~ ~ 1.5 1.5 1.5 0 50 force @a
playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 3.5 1 0

kill @s

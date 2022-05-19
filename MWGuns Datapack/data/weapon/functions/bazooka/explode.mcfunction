##################### Explode #####################

summon area_effect_cloud ^ ^ ^-3 {Tags:["target"]}
execute as @e[type=!#weapon:non-use,distance=..12,gamemode=!creative,gamemode=!spectator] at @s positioned ~ ~1.5 ~ facing entity @e[type=area_effect_cloud,tag=target,sort=nearest,limit=1] eyes run function weapon:bazooka/quickray


execute as @e[distance=..12,type=!#weapon:non-use,tag=damage] run function weapon:bazooka/damage
playsound minecraft:entity.generic.explode voice @a

particle minecraft:explosion_emitter ~ ~ ~ 1.5 1.5 1.5 0 25 force @a
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0 10 force @a
particle minecraft:flame ~ ~ ~ 0.7 0.7 0.7 0.7 100 force @a


kill @s

### Common Mob - Hitboxes

tag @s[tag=body] remove body
tag @s add hit
tag @s add body
particle block redstone_block ~ ~ ~ 0.3 0.3 0.3 0.3 5 normal @a

scoreboard players operation @s[tag=body] damage = body damage
execute as @s[type=player] run function weapon:health/damage/pre
execute as @s[type=!player] run function weapon:health/damage/mob

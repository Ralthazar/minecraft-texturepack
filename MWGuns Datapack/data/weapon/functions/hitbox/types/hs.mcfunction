### Common Mob - Hitboxes

tag @s[tag=head] remove head
tag @s[tag=body] remove body

execute positioned ~ ~-1.6 ~ if entity @s[distance=..0.35] run tag @s add head
execute if entity @s[tag=!head] run tag @s add body

tag @s[tag=head] add hit
tag @s[tag=body] add hit

execute as @s[tag=head] at @s run particle block redstone_block ~ ~1.5 ~ 0.3 0.3 0.3 0.3 5 normal @a
execute as @s[tag=body] at @s run particle block redstone_block ~ ~0.75 ~ 0.3 0.3 0.3 0.3 5 normal @a

scoreboard players operation @s[tag=body] damage = body damage
scoreboard players operation @s[tag=head] damage = head damage
function weapon:health/damage/pre

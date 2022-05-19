##################### Mob Tags #####################

# Tag

execute as @e[type=!#weapon:non-use,tag=!shooter,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function weapon:hitbox/hit

execute as @e[type=!#weapon:non-use,tag=!shooter,tag=hit] at @s run function weapon:mob_dead

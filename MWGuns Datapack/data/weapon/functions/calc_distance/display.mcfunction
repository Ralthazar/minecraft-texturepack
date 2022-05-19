### - Calculate the number of blocks (Distance) between the player and the entity

# - Final Product

scoreboard players operation @s e_distance /= /2 e_distance
scoreboard players operation @e[tag=selected,sort=nearest,limit=1] e_distance = @s e_distance

### - Calculate the number of blocks (Distance) between the player and the entity

# Count Distance in half blocks
scoreboard players add @s e_distance 1

# Loop Ray
execute facing entity @e[tag=selected,limit=1] feet unless entity @e[tag=selected,distance=..0.5] positioned ^ ^ ^0.5 run function weapon:calc_distance/calc

# Display
execute if entity @e[tag=selected,distance=..0.5] run function weapon:calc_distance/display

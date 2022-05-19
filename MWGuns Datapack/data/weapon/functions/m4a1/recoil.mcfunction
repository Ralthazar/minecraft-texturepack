##################### Recoil #####################

scoreboard players add @s recoil 1

execute if score @s recoil matches 1 run tp @s ~ ~ ~ ~0.36 ~-1.2

execute if score @s recoil matches 2 run tp @s ~ ~ ~ ~-0.25 ~-0.45

execute if score @s recoil matches 3 run tp @s ~ ~ ~ ~0.36 ~-0.7

execute if score @s recoil matches 4 run tp @s ~ ~ ~ ~-0.36 ~-1.35

execute if score @s recoil matches 4.. run tag @s remove recoil_m4a1
execute if score @s recoil matches 4.. run scoreboard players reset @s recoil

##################### Recoil #####################

scoreboard players add @s recoil 1

execute if score @s recoil matches 1 run tp @s ~ ~ ~ ~0.66 ~-1.7

execute if score @s recoil matches 2 run tp @s ~ ~ ~ ~-0.45 ~-0.95

execute if score @s recoil matches 3 run tp @s ~ ~ ~ ~0.46 ~-0.7

execute if score @s recoil matches 4 run tp @s ~ ~ ~ ~-0.66 ~-1.85

execute if score @s recoil matches 4.. run tag @s remove recoil_ak47
execute if score @s recoil matches 4.. run scoreboard players reset @s recoil

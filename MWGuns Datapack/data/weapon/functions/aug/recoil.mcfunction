##################### Recoil #####################

scoreboard players add @s recoil 1

execute if score @s recoil matches 1 run tp @s ~ ~ ~ ~0.56 ~-1.7

execute if score @s recoil matches 2 run tp @s ~ ~ ~ ~-0.56 ~-0.115

execute if score @s recoil matches 3 run tp @s ~ ~ ~ ~0.56 ~-0.73

execute if score @s recoil matches 4 run tp @s ~ ~ ~ ~-0.56 ~-1.85

execute if score @s recoil matches 4.. run tag @s remove recoil_aug
execute if score @s recoil matches 4.. run scoreboard players reset @s recoil

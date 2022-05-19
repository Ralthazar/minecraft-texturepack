##################### Recoil #####################

scoreboard players add @s recoil 1

execute if score @s recoil matches 1 run tp @s ~ ~ ~ ~0.56 ~-1.6

execute if score @s recoil matches 2 run tp @s ~ ~ ~ ~-0.4 ~-0.85

execute if score @s recoil matches 3 run tp @s ~ ~ ~ ~0.43 ~-0.6

execute if score @s recoil matches 4 run tp @s ~ ~ ~ ~-0.61 ~-1.75

execute if score @s recoil matches 4.. run tag @s remove recoil_mp5
execute if score @s recoil matches 4.. run scoreboard players reset @s recoil

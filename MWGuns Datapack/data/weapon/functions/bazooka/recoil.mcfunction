##################### Recoil #####################

scoreboard players add @s recoil 1


execute if score @s recoil matches 1 run tp @s ~ ~ ~ ~ ~-2.5
execute if score @s recoil matches 2 run tp @s ~ ~ ~ ~ ~-2.5
execute if score @s recoil matches 3 run tp @s ~ ~ ~ ~ ~-2.5
execute if score @s recoil matches 4 run tp @s ~ ~ ~ ~ ~-2.5

execute if score @s recoil matches 1..4 rotated ~ 0 if block ^ ^ ^-0.2 #raythru run tp @s ^ ^ ^-0.2

execute if score @s recoil matches 4.. run tag @s remove recoil_bazooka
execute if score @s recoil matches 4.. run scoreboard players reset @s recoil

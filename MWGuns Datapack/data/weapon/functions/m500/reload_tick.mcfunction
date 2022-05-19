### - Reload Done

scoreboard players add @s reloading 1

execute if score @s reloading matches 5 run function weapon:m500/add_ammo

execute if score @s magazine matches 8.. run playsound guns:m500.pump master @a[tag=temp] ~ ~ ~ 100000 1 1
execute if score @s magazine matches 8.. run tag @s remove reload
execute if score @s magazine matches 8.. run scoreboard players reset @s reloading

execute unless score @s magazine matches 8.. if score @s reloading matches 20.. run scoreboard players reset @s reloading

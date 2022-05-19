##################### Loop #####################

scoreboard players add @s raycasting 1

particle minecraft:cloud ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.1 2 force @a

tp @s ^ ^ ^3 ~ ~0.2
execute unless block ~ ~ ~ #raythru run scoreboard players set @s raycasting 1000
execute positioned ^ ^ ^-1 unless block ~ ~ ~ #raythru run scoreboard players set @s raycasting 1000
execute positioned ^ ^ ^-1.5 unless block ~ ~ ~ #raythru run scoreboard players set @s raycasting 1000
execute positioned ^ ^ ^-2 unless block ~ ~ ~ #raythru run scoreboard players set @s raycasting 1000


execute as @s[scores={raycasting=1000..}] run function weapon:bazooka/explode



tag @a[tag=shooter,sort=nearest,limit=1] remove shooter

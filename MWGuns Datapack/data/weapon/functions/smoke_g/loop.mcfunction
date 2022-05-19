##################### Loop #####################

scoreboard players add @s raycasting 1

particle mycelium ~ ~ ~ 0 0 0 0.1 3 force @a
execute rotated ~ ~3 run particle mycelium ^ ^ ^0.6 0 0 0 0.1 3 force @a

tp @s ^ ^ ^1.2 ~ ~3

execute unless block ~ ~ ~ #raythru run scoreboard players set @s raycasting 1000

execute as @s[scores={raycasting=1000..}] run function weapon:smoke_g/explode

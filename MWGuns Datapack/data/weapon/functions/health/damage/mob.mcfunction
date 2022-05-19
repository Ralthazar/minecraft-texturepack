### - Damage the player

execute store result score v0 V run data get entity @s Health
execute store result entity @s Health float 1 run scoreboard players operation v0 V -= @s damage

particle block redstone_block ~ ~0.7 ~ 0.3 0.3 0.3 0.3 15 normal @a
scoreboard players reset @s damage

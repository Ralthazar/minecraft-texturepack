### - Helper

execute unless block ~ ~ ~ #raythru unless block ~ ~ ~ #weapon:special run scoreboard players set @s range 200
execute if block ~ ~ ~ #minecraft:slabs run function weapon:ray/slabs
execute if entity @e[type=!#weapon:non-use,tag=!shooter,distance=..2] run function weapon:ray/mobs

#execute if block ~ ~ ~ #weapon:special run function easy_ray:offset

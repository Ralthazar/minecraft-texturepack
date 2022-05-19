######## DAMAGE_PRE ###############
execute store result score v4 V run data get entity @s Health

execute if score v4 V <= @s damage run kill @s
execute unless score v4 V <= @s damage run function weapon:health/damage/pre2
scoreboard players reset @s damage

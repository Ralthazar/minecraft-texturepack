######## DAMAGE_PRE ###############
execute store result score v4 V run data get entity @s AbsorptionAmount
scoreboard players operation v3 V -= v4 V

execute store result score v0 V run attribute @s minecraft:generic.max_health get
execute if score v0 V matches 1024 run tellraw @a {"text":"[Warn]: max_health >= 1024 are not supported!","color":"yellow"}
scoreboard players operation v2 V = v0 V
scoreboard players operation v0 V += v3 V
scoreboard players operation v0 V += @s damage

function weapon:health/damage/main

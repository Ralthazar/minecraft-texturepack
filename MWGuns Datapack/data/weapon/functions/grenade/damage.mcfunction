##################### Damage #####################

scoreboard players add @s[type=!player,tag=damage,distance=..4] damage 8
scoreboard players add @s[type=!player,tag=damage,distance=4..6] damage 6

scoreboard players add @s[type=player,gamemode=!creative,gamemode=!spectator,tag=damage,distance=..6] damage 8
scoreboard players add @s[type=player,gamemode=!creative,gamemode=!spectator,tag=damage,distance=4..6] damage 6


execute as @s[type=player] store result score v4 V run data get entity @s Health
execute as @s[type=player] if score v4 V <= @s damage run tellraw @a ["",{"selector":"@s"},{"text":" was blown up by a grenade"}]
gamerule showDeathMessages false
execute as @s[type=player] run function weapon:health/damage/pre
execute as @s[type=!player] run function weapon:health/damage/mob

tag @s remove damage
gamerule showDeathMessages true

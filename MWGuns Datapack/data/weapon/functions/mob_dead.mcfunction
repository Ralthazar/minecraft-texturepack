##################### Mob Dead #####################
execute store result score @s health_temp run data get entity @s Health

execute if score @s[type=!player,type=!#weapon:non-use,tag=head] health_temp <= head damage run tag @s add dead
execute if score @s[type=!player,type=!#weapon:non-use,tag=body] health_temp <= body damage run tag @s add dead
execute if score @s[type=player,gamemode=!creative,gamemode=!spectator,tag=head] health_temp <= head damage run tag @s add dead
execute if score @s[type=player,gamemode=!creative,gamemode=!spectator,tag=body] health_temp <= body damage run tag @s add dead

tag @s add selected
execute if entity @s[type=!#weapon:non-use,tag=selected] as @a[tag=shooter] at @s run function weapon:calc_distance/init

function weapon:check_health
execute as @s[tag=dead] run function weapon:add_kills
tag @s remove selected

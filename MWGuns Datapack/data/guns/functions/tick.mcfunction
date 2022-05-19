##################### Tick #####################

execute as @a at @s run function weapon:p_tick
function weapon:tick

scoreboard players enable @a G-Config
execute as @a[scores={G-Config=1..}] run function guns:config/main
execute as @a at @s run function weapon:reset
tag @e[type=area_effect_cloud,tag=WUID] remove passed
tag @e[type=area_effect_cloud,tag=WUID] remove checked

### - Reload

tag @s add reloading
tag @s add temp

execute as @e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1] run function weapon:mac10/reload_tick

tag @s add actionbar
title @s actionbar ["",{"text":"Reloading...","color":"white"}]
tag @s remove temp
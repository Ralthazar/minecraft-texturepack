################ Optimize ################

tag @s add holding_weapon
execute as @s[predicate=weapon:guns/cos] run function weapon:gun_uuid/resolve

execute if entity @e[type=area_effect_cloud,tag=WUID,tag=passed,tag=reload,limit=1] run function weapon:bazooka/reload
title @s[tag=!actionbar] actionbar ["",{"score":{"name":"@e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1]","objective":"magazine"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"@e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1]","objective":"magazine_cap"},"color":"white"}]

execute as @s at @s if score @e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1] magazine matches 1.. if score @s click matches 1.. run function weapon:bazooka/summon
tag @e[type=area_effect_cloud] remove passed

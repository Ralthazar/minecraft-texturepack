################ Optimize ################

tag @s add holding_weapon
tag @s add holding_zoom
execute as @s[predicate=weapon:guns/cos] run function weapon:gun_uuid/resolve
execute if entity @e[type=area_effect_cloud,tag=WUID,tag=passed,tag=reload,limit=1] run function weapon:glock-18/reload

title @s[tag=!actionbar] actionbar ["",{"score":{"name":"@e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1]","objective":"magazine"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"@e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1]","objective":"magazine_cap"},"color":"white"}]

execute if score @e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1] magazine matches ..0 if score @s click matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:glistering_melon_slice",tag:{CustomModelData:700}}]}] run playsound guns:common.empty voice @s

execute as @s[tag=!reloading] at @s anchored eyes if score @e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1] magazine matches 1.. if score @s click matches 1.. run function weapon:glock-18/shoot
tag @e[type=area_effect_cloud] remove passed

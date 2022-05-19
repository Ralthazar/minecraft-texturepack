################ Optimize ################

tag @s add holding_weapon
tag @s add holding_zoom
tag @s add holding_full_auto
execute as @s[predicate=weapon:guns/cos] run function weapon:gun_uuid/resolve
execute if entity @e[type=area_effect_cloud,tag=WUID,tag=passed,tag=reload,limit=1] run function weapon:aug/reload

title @s[tag=!actionbar] actionbar ["",{"score":{"name":"@e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1]","objective":"magazine"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"@e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1]","objective":"magazine_cap"},"color":"white"}]


execute if entity @s[tag=full_auto] at @s run function weapon:full_auto/run

execute if score @e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1] magazine matches ..0 unless score @s full_auto matches 1.. if score @s click matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:glistering_melon_slice",tag:{CustomModelData:703}}]}] run playsound guns:common.empty voice @s

execute if score @e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1] magazine matches 1.. unless score @s full_auto matches 1.. if score @s click matches 1.. if entity @s[nbt={Inventory:[{id:"minecraft:glistering_melon_slice",tag:{CustomModelData:703}}]}] run function weapon:aug/shoot
execute as @s[tag=!reloading] at @s anchored eyes if score @e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1] magazine matches 1.. unless score @s full_auto matches 1.. if score @s click matches 1.. run function weapon:aug/shoot

tag @e[type=area_effect_cloud] remove passed

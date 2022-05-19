################ Optimize ################

tag @s add holding_weapon
tag @s add holding_zoom
tag @s add holding_shoot_delay

execute as @s[predicate=weapon:guns/cos] run function weapon:gun_uuid/resolve
execute if entity @e[type=area_effect_cloud,tag=WUID,tag=passed,tag=reload,limit=1] run function weapon:mosin/reload

title @s[tag=!actionbar] actionbar ["",{"score":{"name":"@e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1]","objective":"magazine"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"@e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1]","objective":"magazine_cap"},"color":"white"}]

execute if score @e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1] magazine matches ..0 unless score @s shoot_delay matches 1.. if score @s click matches 1.. run playsound guns:common.empty voice @s

execute as @s[tag=!reloading] at @s anchored eyes if score @e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1] magazine matches 1.. unless score @s shoot_delay matches 1.. if score @s click matches 1.. run function weapon:mosin/shoot
execute as @s[tag=shoot_delay_mosin] at @s run function weapon:mosin/shoot_delay

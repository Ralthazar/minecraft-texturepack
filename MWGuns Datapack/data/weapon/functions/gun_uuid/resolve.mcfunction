### - Resolve

function weapon:gun_uuid/sub-resolve
execute unless entity @e[type=area_effect_cloud,tag=WUID,tag=passed] run function weapon:gun_uuid/weapon_id
scoreboard players reset temp WUID
tag @e[type=area_effect_cloud,tag=WUID,tag=passed] add checked

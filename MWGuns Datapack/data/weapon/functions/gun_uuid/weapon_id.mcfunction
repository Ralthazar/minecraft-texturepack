### - Weapon ID

tag @s add temp
function weapon:data/data

execute store result storage weapon:temp Item.tag.gun int 1 run scoreboard players get 1 WUID
execute store result storage weapon:temp Item.tag.WUID int 1 run scoreboard players get max_id WUID

data modify block 1 0 0 Items append from storage weapon:temp Item
loot replace entity @s weapon.mainhand 1 mine 1 0 0 minecraft:air{drop_contents:1b}

summon area_effect_cloud ~ ~ ~ {PersistanceRequired:1,Radius:0f,Duration:2147483647,Tags:["WUID"]}
execute as @e[type=area_effect_cloud,tag=WUID,sort=nearest,limit=1] run function weapon:gun_uuid/create
tag @a remove temp
################################################################################################################################################################################################################################################################

### - Weapon UID

function weapon:data/data

scoreboard players add limit WUID 1

scoreboard players operation @s WUID = limit WUID
scoreboard players operation @s WUID -= 1 WUID
execute store result entity @s Item.tag.WUID int 1 run scoreboard players get @s WUID

execute store result storage weapon:temp Item.tag.CustomModelData int 1 run scoreboard players get @s custommodeldata

data modify block 1 0 0 Items append from storage weapon:temp Item
loot replace entity @s weapon.mainhand 1 mine 1 0 0 minecraft:air{drop_contents:1b}

################################################################################################################################################################################################################################################################

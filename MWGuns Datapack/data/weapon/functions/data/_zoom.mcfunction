### - Store Selected Item

function weapon:data/data

execute store result score @s custommodeldata run data get entity @s SelectedItem.tag.CustomModelData
scoreboard players add @s custommodeldata 1

execute store result storage weapon:temp Item.tag.CustomModelData int 1 run scoreboard players get @s custommodeldata

data modify block 1 0 0 Items append from storage weapon:temp Item
loot replace entity @s weapon.mainhand 1 mine 1 0 0 minecraft:air{drop_contents:1b}

scoreboard players reset @s custommodeldata
################################################################################################################################################################################################################################################################

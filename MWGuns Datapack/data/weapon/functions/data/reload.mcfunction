### - Store Selected Item

function weapon:data/data

# In-Reload
execute store result score @s[tag=!reloading] custommodeldata run data get entity @s SelectedItem.tag.CustomModelData
execute store result score @s[tag=!reloading] modeldamage run data get entity @s SelectedItem.tag.Damage
scoreboard players add @s[tag=!reloading] modeldamage 1
# Out-Reload
execute store result score @s[tag=reloading] custommodeldata run data get entity @s SelectedItem.tag.CustomModelData
execute store result score @s[tag=reloading] modeldamage run data get entity @s SelectedItem.tag.Damage
scoreboard players remove @s[tag=reloading] modeldamage 1

# Store result
execute store result storage weapon:temp Item.tag.CustomModelData int 1 run scoreboard players get @s custommodeldata
execute store result storage weapon:temp Item.tag.Damage int 1 run scoreboard players get @s modeldamage

data modify block 1 0 0 Items append from storage weapon:temp Item
loot replace entity @s weapon.mainhand 1 mine 1 0 0 minecraft:air{drop_contents:1b}

scoreboard players reset @s custommodeldata
################################################################################################################################################################################################################################################################

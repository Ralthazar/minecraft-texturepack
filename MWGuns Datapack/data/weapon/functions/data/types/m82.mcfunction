### - Check Mosin
function weapon:data/data

# - Normal
execute unless score @s reloading matches 0.. if entity @s[tag=!reloading_value,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:240}}}] run data modify storage weapon:temp Item.tag.CustomModelData set value 241
execute unless score @s reloading matches 0.. if entity @s[tag=!reloading_value,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:241}}}] run data modify storage weapon:temp Item.tag.CustomModelData set value 240

# - Shoot
execute if score @s reloading matches 0 if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Damage:0,CustomModelData:240}}}] run data modify storage weapon:temp Item.tag.CustomModelData set value 240
execute if score @s reloading matches 0 if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Damage:0,CustomModelData:240}}}] run data modify storage weapon:temp Item.tag.Damage set value 1
execute if score @s reloading matches 0 if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Damage:0,CustomModelData:241}}}] run data modify storage weapon:temp Item.tag.CustomModelData set value 240
execute if score @s reloading matches 0 if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Damage:0,CustomModelData:241}}}] run data modify storage weapon:temp Item.tag.Damage set value 1

# - Finish Reload
execute if score @s reloading >= value reload_max if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Damage:1,CustomModelData:240}}}] run data modify storage weapon:temp Item.tag.CustomModelData set value 240
execute if score @s reloading >= value reload_max if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Damage:1,CustomModelData:240}}}] run data modify storage weapon:temp Item.tag.Damage set value 0
execute if score @s reloading >= value reload_max if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Damage:1,CustomModelData:241}}}] run data modify storage weapon:temp Item.tag.CustomModelData set value 240
execute if score @s reloading >= value reload_max if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Damage:1,CustomModelData:241}}}] run data modify storage weapon:temp Item.tag.Damage set value 0

function weapon:data/store

scoreboard players reset @s custommodeldata
scoreboard players reset @s modeldamage
################################################################################################################################################################################################################################################################

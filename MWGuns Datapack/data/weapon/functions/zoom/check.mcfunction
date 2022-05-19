##################### Zoom Check #####################

# - Remove tags (Anti-glitch/spam)

tag @s[tag=holding_zoom] remove holding_zoom

# - Check for the selected item and add the new tag

# - Run subfunction (Anti-Lag system) for replacing the items

#execute unless score @s reloading matches 1.. run function weapon:zoom/add_tag
tag @s[scores={drop=1..}] add notavailable

execute unless score @s[tag=!notavailable,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b}},predicate=!weapon:guns/zoomed,scores={sneaking=1..}] reloading matches 1.. run function weapon:zoom/replace
execute unless score @s[tag=!notavailable,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b}}] reloading matches 1.. unless score @s[predicate=weapon:guns/zoomed] sneaking matches 1.. run function weapon:zoom/replace_r

attribute @s[predicate=weapon:guns/zoomed] minecraft:generic.movement_speed base set 0.075
tag @s remove notavailable

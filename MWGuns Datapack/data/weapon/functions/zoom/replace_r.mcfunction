##################### Zoom Replace Revoke #####################

# - Testfor tags and replace the items

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b}}] run function weapon:data/out_zoom

playsound guns:common.lean_out voice @s

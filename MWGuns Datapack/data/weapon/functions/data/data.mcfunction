### - Store Selected Item

# - Main
data remove block 1 0 0 Items
data remove storage weapon:temp Items
data modify storage weapon:temp Item set from entity @s SelectedItem

setblock 1 0 0 air replace
setblock 1 0 0 shulker_box replace
data modify block 1 0 0 Items append from storage weapon:temp Item

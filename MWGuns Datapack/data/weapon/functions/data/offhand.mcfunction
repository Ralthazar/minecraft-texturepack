### - Store Selected Item

# - Main
data remove block 1 0 0 Items
data remove storage weapon:temp Items
data remove storage weapon:temp Item
data modify storage weapon:temp Item set from entity @s Inventory[{Slot:-106b}]
data remove storage weapon:temp Item.Slot

setblock 1 0 0 air replace
setblock 1 0 0 shulker_box replace

data modify block 1 0 0 Items append from storage weapon:temp Item
loot replace entity @s weapon.mainhand 1 mine 1 0 0 minecraft:air{drop_contents:1b}
replaceitem entity @s weapon.offhand air
################################################################################################################################################################################################################################################################

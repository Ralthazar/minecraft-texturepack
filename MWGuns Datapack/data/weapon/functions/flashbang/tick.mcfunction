################ Optimize ################

execute as @s at @s if score @s click matches 1.. run function weapon:flashbang/summon

execute unless score @s sneaking matches 1.. run effect clear @s slowness

### - Resolve

execute store result score temp WUID run data get entity @s SelectedItem.tag.WUID
execute as @e[type=area_effect_cloud,tag=WUID,scores={WUID=1..}] if score @s WUID = temp WUID run tag @s add passed

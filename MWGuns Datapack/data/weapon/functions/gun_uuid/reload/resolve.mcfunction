### - Resolve

execute store result score temp WUID run data get entity @s Inventory[{Slot:-106b}].tag.WUID
execute as @e[type=area_effect_cloud,tag=WUID,scores={WUID=1..}] if score @s WUID = temp WUID unless score @s magazine = @s magazine_cap run tag @s add passed
scoreboard players reset temp WUID

### - Slabs
summon area_effect_cloud ~ ~ ~ {Tags:["slab_check"]}
execute as @e[type=area_effect_cloud,tag=slab_check] store result score v4 V run data get entity @s Pos[1] 100
scoreboard players operation v4 V %= 100 C

execute if block ~ ~ ~ #minecraft:slabs[type=bottom] if score v4 V matches ..49 run tag @s add temp
execute if block ~ ~ ~ #minecraft:slabs[type=top] if score v4 V matches 51.. run tag @s add temp
scoreboard players set @s[tag=temp] range 200
kill @e[tag=slab_check]

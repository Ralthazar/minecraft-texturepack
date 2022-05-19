### - Start The Ray
tag @a remove shooter
tag @s add shooter
scoreboard players reset @s range
execute as @s at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^ {Tags:["ray"],Radius:0f}
execute anchored eyes run tp @e[tag=ray,sort=nearest,limit=1] @s
execute if entity @s[predicate=!weapon:guns/zoomed] as @e[tag=ray,sort=nearest,limit=1] at @s run function weapon:quick_random
execute at @e[tag=ray,sort=nearest,limit=1] run function weapon:ray/continue
tag @s remove temp
tag @a remove shooter
setblock 1 0 0 air

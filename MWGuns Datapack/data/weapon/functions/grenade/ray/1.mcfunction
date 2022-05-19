##################### Summon #####################

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ray","m82"]}


execute as @e[tag=ray,sort=nearest,limit=1] at @s positioned ^ ^ ^1 run function weapon:m82/loop

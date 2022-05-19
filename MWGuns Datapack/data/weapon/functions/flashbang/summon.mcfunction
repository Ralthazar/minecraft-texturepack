##################### Summon #####################

playsound minecraft:item.armor.equip_leather master @a

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ray","flashbang"],Radius:0f,Duration:1200}

tp @e[tag=ray,sort=nearest,limit=1] @s
tp @e[tag=ray,sort=nearest,limit=1] ~ ~1.5 ~
execute positioned ~ ~1.5 ~ run tp @e[tag=ray,sort=nearest,limit=1] ^ ^ ^0.5

execute if score @s sneaking matches 1.. run effect clear @s slowness

replaceitem entity @s[gamemode=!creative,gamemode=!spectator] weapon.mainhand air

scoreboard players set @e[tag=ray,sort=nearest,limit=1] raycasting 0

scoreboard players reset @s click

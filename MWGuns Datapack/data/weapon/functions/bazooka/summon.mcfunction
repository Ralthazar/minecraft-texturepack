##################### Summon #####################

playsound guns:rpg7.fire master @a

#summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:1200,Tags:["ray","bazookaray"],Passengers:[{id:"minecraft:armor_stand",NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["ray","bazookaray"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:glistering_melon_slice",Count:1b,tag:{CustomModelData:201}}]}]}
#summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ray","bazookaray"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:glistering_melon_slice",Count:1b,tag:{CustomModelData:201}}]}
#summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["bazookaray","rocket"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:glistering_melon_slice",Count:1b,tag:{CustomModelData:201}}]}

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ray","bazookaray"],Radius:0f,Duration:1200}

tp @e[tag=ray,sort=nearest,limit=1] @s
tp @e[tag=ray,sort=nearest,limit=1] ~ ~1.5 ~

execute rotated ~ ~-10 run tp @s ~ ~ ~ ~ ~

effect give @s slowness 3 2 true

scoreboard players set @e[tag=ray,sort=nearest,limit=1] raycasting 0
scoreboard players remove @e[type=area_effect_cloud,tag=WUID,tag=passed] magazine 1

scoreboard players reset @s click

tag @s add recoil_bazooka
function weapon:data/zoom

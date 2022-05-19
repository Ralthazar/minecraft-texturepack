##################### Summon #####################

tag @s add shooter
tag @s add recoil_m500
playsound guns:m500.fire master @a
scoreboard players set body damage 14
scoreboard players set head damage 20
function weapon:ray/start
scoreboard players set @s reloading 0
scoreboard players remove @e[type=area_effect_cloud,tag=WUID,tag=passed] magazine 1
scoreboard players reset @s click

##################### Summon #####################

scoreboard players set body damage 4
scoreboard players set head damage 7
function weapon:ray/start
tag @s add recoil_glock-18
playsound guns:glock18.fire voice @a
playsound guns:common.small_crack_mono master @a[distance=13..30] ~ ~ ~ 5 1 1
scoreboard players remove @e[type=area_effect_cloud,tag=WUID,tag=passed] magazine 1
scoreboard players reset @s click

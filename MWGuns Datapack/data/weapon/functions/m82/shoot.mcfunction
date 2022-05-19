##################### Summon #####################

scoreboard players set body damage 15
scoreboard players set head damage 20
function weapon:ray/start
tag @s add recoil_m82
playsound guns:m82.fire master @a
playsound guns:common.large_crack master @a[distance=13..20] ~ ~ ~ 5 1 1
playsound guns:common.large_crack_mono master @a[distance=20..40] ~ ~ ~ 5 1 1
scoreboard players remove @e[type=area_effect_cloud,tag=WUID,tag=passed] magazine 1
tag @s add shoot_delay_m82
scoreboard players reset @s click

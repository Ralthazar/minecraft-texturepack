##################### Summon #####################

scoreboard players set body damage 8
scoreboard players set head damage 13
function weapon:ray/start
tag @s add recoil_svd
tag @s add shoot_delay_svd
scoreboard players remove @e[type=area_effect_cloud,tag=WUID,tag=passed] magazine 1
playsound guns:svd.fire master @a
playsound guns:common.med_crack master @a[distance=13..20] ~ ~ ~ 5 1 1
playsound guns:common.med_crack_mono master @a[distance=20..40] ~ ~ ~ 5 1 1
scoreboard players reset @s click

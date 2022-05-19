### - Shoot
scoreboard players set body damage 4
scoreboard players set head damage 8
function weapon:ray/start
tag @s add recoil_mp5
tag @s add full_auto
tag @s add full_auto_mp5
scoreboard players reset @s click
scoreboard players remove @e[type=area_effect_cloud,tag=WUID,tag=passed] magazine 1
playsound guns:mp5.fire master @a
playsound guns:common.small_crack_mono master @a[distance=13..25] ~ ~ ~ 5 1 1

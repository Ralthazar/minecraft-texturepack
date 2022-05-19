##################### Summon #####################

scoreboard players set body damage 5
scoreboard players set head damage 8
function weapon:ray/start
tag @s add recoil_m4a1
tag @s add full_auto
tag @s add full_auto_m4a1
scoreboard players reset @s[scores={full_auto=3..}] full_auto
playsound guns:m4.fire master @a
playsound guns:common.small_crack_mono master @a[distance=13..30] ~ ~ ~ 5 1 1
scoreboard players remove @e[type=area_effect_cloud,tag=WUID,tag=passed] magazine 1

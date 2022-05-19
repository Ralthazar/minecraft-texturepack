##################### Summon #####################

scoreboard players set body damage 8
scoreboard players set head damage 12
function weapon:ray/start
tag @s add recoil_ak47
tag @s add full_auto
tag @s add full_auto_ak47
scoreboard players reset @s click
scoreboard players remove @e[type=area_effect_cloud,tag=WUID,tag=passed] magazine 1
scoreboard players reset @s[scores={full_auto=3..}] full_auto
playsound guns:ak47.fire master @a
playsound guns:common.small_crack_mono master @a[distance=13..30] ~ ~ ~ 5 1 1

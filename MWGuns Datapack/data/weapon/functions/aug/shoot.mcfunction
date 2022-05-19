##################### Summon #####################

scoreboard players set body damage 7
scoreboard players set head damage 10
function weapon:ray/start
tag @s add recoil_aug
tag @s add full_auto
tag @s add full_auto_aug
scoreboard players reset @s click
scoreboard players reset @s[scores={full_auto=3..}] full_auto
playsound guns:aug.fire master @a
playsound guns:common.small_crack_mono master @a[distance=13..25] ~ ~ ~ 5 1 1
scoreboard players remove @e[type=area_effect_cloud,tag=WUID,tag=passed] magazine 1

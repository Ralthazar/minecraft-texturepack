##################### Summon #####################

scoreboard players set body damage 3
scoreboard players set head damage 7
function weapon:ray/start
tag @s add recoil_mac10
tag @s add full_auto
tag @s add full_auto_mac10
scoreboard players reset @s[scores={full_auto=3..}] full_auto
scoreboard players reset @s click
scoreboard players remove @e[type=area_effect_cloud,tag=WUID,tag=passed] magazine 1
playsound guns:mac10.fire master @a
playsound guns:common.small_crack_mono master @a[distance=13..25] ~ ~ ~ 5 1 1

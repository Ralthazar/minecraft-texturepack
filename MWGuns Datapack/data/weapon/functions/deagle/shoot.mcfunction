##################### Summon #####################

scoreboard players set body damage 6
scoreboard players set head damage 16
function weapon:ray/start
tag @s add recoil_deagle
tag @s add shoot_delay_deagle
playsound guns:deagle.fire master @a
playsound guns:common.small_crack_mono master @a[distance=13..25] ~ ~ ~ 5 1 1
scoreboard players remove @e[type=area_effect_cloud,tag=WUID,tag=passed] magazine 1
scoreboard players reset @s click
setblock ~ 255 ~ air
tag @a remove shooter

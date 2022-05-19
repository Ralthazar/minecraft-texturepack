### - Continue
scoreboard players add @s range 1
execute unless score @s range matches 100.. run function weapon:ray/helper
execute if score @s range matches 100.. unless block ~ ~ ~ #raythru run playsound guns:common.solid_bullet_impact master @a[distance=..5] ~ ~ ~ 0.25 1 1
execute if score @s range matches 100.. unless block ~ ~ ~ #raythru positioned ^ ^ ^-1 run particle crit ~ ~0.25 ~ 0.1 0.1 0.1 0.5 2 force @a
execute unless score @s range matches 100.. positioned ^ ^ ^0.5 run function weapon:ray/continue

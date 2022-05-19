################ Shoot Delay ################

scoreboard players add @s shoot_delay 1

tag @s[scores={shoot_delay=40..}] remove shoot_delay_m82
scoreboard players reset @s[scores={shoot_delay=40..}] shoot_delay

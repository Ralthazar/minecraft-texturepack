################ Shoot Delay ################

scoreboard players add @s shoot_delay 1

tag @s[scores={shoot_delay=10..}] remove shoot_delay_deagle
scoreboard players reset @s[scores={shoot_delay=10..}] shoot_delay

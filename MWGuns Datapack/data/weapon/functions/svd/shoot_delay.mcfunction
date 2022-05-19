################ Shoot Delay ################

scoreboard players add @s shoot_delay 1

tag @s[scores={shoot_delay=5..}] remove shoot_delay_svd
scoreboard players reset @s[scores={shoot_delay=5..}] shoot_delay

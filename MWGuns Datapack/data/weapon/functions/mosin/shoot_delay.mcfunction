################ Shoot Delay ################

scoreboard players add @s shoot_delay 1
execute if score @s shoot_delay matches 5 run playsound guns:mosin.cycle voice @s ~ ~ ~ 100 1 1

tag @s[scores={shoot_delay=40..}] remove shoot_delay_mosin
scoreboard players reset @s[scores={shoot_delay=40..}] shoot_delay

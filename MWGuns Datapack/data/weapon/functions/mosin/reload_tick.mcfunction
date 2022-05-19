### - Reload Done

scoreboard players add @s reloading 1

execute if score @s reloading matches 1 run playsound guns:mosin.reload master @a[tag=temp] ~ ~ ~ 100000 1 1
execute if score @s reloading matches 20.. run scoreboard players add @s magazine 1
execute if score @s reloading matches 20.. run tag @s remove reload
execute if score @s reloading matches 20.. run scoreboard players reset @s reloading

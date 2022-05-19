### - Reload Done

scoreboard players add @s reloading 1

execute if score @s reloading matches 35 run playsound guns:rpg7.playerbegin master @a[tag=temp] ~ ~ ~ 100000 1 1
execute if score @s reloading matches 85 run playsound guns:rpg7.playerend master @a[tag=temp] ~ ~ ~ 100000 1 1
execute if score @s reloading matches 100.. run scoreboard players set @s magazine 1
execute if score @s reloading matches 100.. run tag @s remove reload
execute if score @s reloading matches 100.. run execute as @a[tag=temp] run function weapon:data/out_zoom
execute if score @s reloading matches 100.. run scoreboard players reset @s reloading

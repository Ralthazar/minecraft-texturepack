### - Reload Done

scoreboard players add @s reloading 1

execute if score @s reloading matches 70.. run scoreboard players operation @s magazine = @s magazine_cap
execute if score @s reloading matches 70.. run tag @s remove reload
execute if score @s reloading matches 70.. run scoreboard players reset @s reloading

execute if score @s reloading matches 30 run playsound guns:m82.playerbegin master @a[tag=temp] ~ ~ ~ 100000 1 1
execute if score @s reloading matches 50 run playsound guns:m82.playermid master @a[tag=temp] ~ ~ ~ 100000 1 1
execute if score @s reloading matches 65 run playsound guns:m82.playerend master @a[tag=temp] ~ ~ ~ 100000 1 1

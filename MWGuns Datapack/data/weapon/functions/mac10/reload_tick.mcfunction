### - Reload Done

scoreboard players add @s reloading 1

execute if score @s reloading matches 1 run playsound guns:mac10.reload master @a[tag=temp] ~ ~ ~ 100000 1 1
execute if score @s reloading matches 55.. run scoreboard players operation @s magazine = @s magazine_cap
execute if score @s reloading matches 55.. run tag @s remove reload
execute if score @s reloading matches 55.. run scoreboard players reset @s reloading

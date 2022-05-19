##################### Full Auto #####################

scoreboard players add @s full_auto 1

execute at @s anchored eyes if entity @s[tag=full_auto_m4a1] at @s run function weapon:m4a1/full_auto
execute at @s anchored eyes if entity @s[tag=full_auto_mac10] run function weapon:mac10/full_auto
execute at @s anchored eyes if entity @s[tag=full_auto_ak47] run function weapon:ak47/full_auto
execute at @s anchored eyes if entity @s[tag=full_auto_minigun] run function weapon:minigun/full_auto
execute at @s anchored eyes if entity @s[tag=full_auto_aug] run function weapon:aug/full_auto
execute at @s anchored eyes if entity @s[tag=full_auto_mp5] run function weapon:mp5/full_auto

tag @s[scores={full_auto=3..}] remove full_auto
scoreboard players reset @s[scores={full_auto=3..}] full_auto

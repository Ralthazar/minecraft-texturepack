##################### Full Auto #####################

execute as @s[scores={full_auto=2}] run function weapon:aug/shoot

tag @s[scores={full_auto=3}] remove full_auto_aug

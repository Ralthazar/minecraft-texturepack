##################### Full Auto #####################

#execute as @s[scores={full_auto=1}] at @s run tp @s ~ ~ ~ ~ ~-0.4

#execute as @s[scores={full_auto=2}] at @s run tp @s ~ ~ ~ ~ ~-0.4
execute as @s[scores={full_auto=2}] run function weapon:m4a1/shoot

#execute as @s[scores={full_auto=3}] at @s run tp @s ~ ~ ~ ~ ~-0.4
tag @s[scores={full_auto=3}] remove full_auto_m4a1

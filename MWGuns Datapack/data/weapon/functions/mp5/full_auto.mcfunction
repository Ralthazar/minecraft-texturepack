##################### Full Auto #####################

execute as @s[scores={full_auto=2}] if score @e[type=area_effect_cloud,tag=WUID,tag=passed,limit=1] magazine matches 1.. run function weapon:mp5/shoot

tag @s[scores={full_auto=3}] remove full_auto_mp5

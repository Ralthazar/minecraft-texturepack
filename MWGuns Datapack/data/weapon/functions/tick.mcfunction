##################### Main #####################

execute as @e[type=!#weapon:non-use,type=!player,scores={damage=1..}] at @s run function weapon:health/damage_mob
############################################# Additional Modes/Settings #######################################################################################################################################

# Blank

####################################################################################################################################################################################


##################### Bazooka #####################

execute as @e[type=area_effect_cloud,tag=bazookaray] at @s run function weapon:bazooka/loop


############################################# Grenades #######################################################################################################################################



##################### Grenade #####################

execute as @e[type=area_effect_cloud,tag=grenade] at @s run function weapon:grenade/loop


##################### Smoke Grenade #####################

execute as @e[type=area_effect_cloud,tag=smoke_grenade] at @s run function weapon:smoke_g/loop
execute as @e[type=armor_stand,tag=smoke_grenade] at @s run function weapon:smoke_g/smoke

##################### Flashbang #####################

execute as @e[type=area_effect_cloud,tag=flashbang] at @s run function weapon:flashbang/loop

####################################################################################################################################################################################

####################################################################################################################################################################################

############################################# Reset Scores and Kill Entities #######################################################################################################################################

####################################################################################################################################################################################

execute if score ?reload settings matches 1 run scoreboard players set @a[scores={reloading=1..}] reloading 1000
scoreboard players set @e[type=area_effect_cloud,tag=WUID,tag=!checked] reloading 0
tag @a remove ray_d
tag @e[type=area_effect_cloud,tag=WUID,tag=!checked,tag=reload] remove reload

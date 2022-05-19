##################### Main #####################

#execute store result score @s reload run data get entity @s SelectedItem.tag.Damage
#execute unless entity @p[tag=holding_knife,distance=..1.5] run tag @s[tag=look] remove look
#tag @s[tag=holding_knife] remove holding_knife
tag @s remove holding_full_auto
attribute @s minecraft:generic.movement_speed base set 0.1

scoreboard players reset @s[tag=!holding_weapon] switch_cooldown

tag @s remove holding_weapon
tag @s remove zoom_weapon
scoreboard players reset @s[tag=!holding_shoot_delay] shoot_delay

tag @s remove holding_shoot_delay
tag @s remove reloading
scoreboard players reset @s e_distance

execute as @s[tag=damaged] run function weapon:health/damage/post
#execute as @s[scores={damage=1..}] run function weapon:health/damage/pre

execute if score @s headshots matches 1.. run advancement grant @s only game:headshot
############################################# Additional Modes/Settings #######################################################################################################################################

##################### Recoil

execute if entity @s[tag=recoil_m4a1] at @s run function weapon:m4a1/recoil
execute if entity @s[tag=recoil_awp] at @s run function weapon:awp/recoil
execute if entity @s[tag=recoil_glock-18] at @s run function weapon:glock-18/recoil
execute if entity @s[tag=recoil_m82] at @s run function weapon:m82/recoil
execute if entity @s[tag=recoil_svd] at @s run function weapon:svd/recoil
execute if entity @s[tag=recoil_m500] at @s run function weapon:m500/recoil
execute if entity @s[tag=recoil_deagle] at @s run function weapon:deagle/recoil
execute if entity @s[tag=recoil_minigun] at @s run function weapon:minigun/recoil
execute if entity @s[tag=recoil_mac10] at @s run function weapon:mac10/recoil
execute if entity @s[tag=recoil_mosin] at @s run function weapon:mosin/recoil
execute if entity @s[tag=recoil_ak47] at @s run function weapon:ak47/recoil
execute if entity @s[tag=recoil_bazooka] at @s run function weapon:bazooka/recoil
execute if entity @s[tag=recoil_makarov] at @s run function weapon:makarov/recoil
execute if entity @s[tag=recoil_aug] at @s run function weapon:aug/recoil
execute if entity @s[tag=recoil_mp5] at @s run function weapon:mp5/recoil

##################### Reloading

execute as @s[predicate=weapon:guns/offhand] run function weapon:gun_uuid/reload/init
####################################################################################################################################################################################

############################################# Explosive Guns #######################################################################################################################################



##################### Bazooka #####################

execute if predicate weapon:guns/rpg7 run function weapon:bazooka/tick


############################################# Grenades #######################################################################################################################################



##################### Grenade #####################

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:700}}}] at @s run function weapon:grenade/tick

##################### Smoke Grenade #####################

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:701}}}] at @s run function weapon:smoke_g/tick

##################### Flashbang #####################

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:702}}}] at @s run function weapon:flashbang/tick

####################################################################################################################################################################################



############################################# Bullet Guns ##########################################################################################################################


##################### glock-18 #####################

execute if predicate weapon:guns/glock-18 run function weapon:glock-18/tick

##################### Makarov #####################

execute if predicate weapon:guns/makarov run function weapon:makarov/tick

##################### Mac-10 #####################

execute if predicate weapon:guns/mac10 run function weapon:mac10/tick

##################### Deagle #####################

execute if predicate weapon:guns/deagle run function weapon:deagle/tick

##################### M4A1 ######################

execute if predicate weapon:guns/m4a1 run function weapon:m4a1/tick

##################### AK-47 #####################

execute if predicate weapon:guns/ak47 run function weapon:ak47/tick

##################### Aug #####################

execute if predicate weapon:guns/aug run function weapon:aug/tick

##################### M82 Sniper Rifle #####################

execute if predicate weapon:guns/m82 run function weapon:m82/tick

##################### SVD #####################

execute if predicate weapon:guns/svd run function weapon:svd/tick

##################### Mosin Sniper Rifle #####################

execute if predicate weapon:guns/mp5 run function weapon:mp5/tick

##################### Mosin Sniper Rifle #####################

execute if predicate weapon:guns/mosin run function weapon:mosin/tick

####################################################################################################################################################################################

##################### M500 Shotgun #####################

execute if predicate weapon:guns/m500 run function weapon:m500/tick

####################################################################################################################################################################################

############################################# Reset Scores and Kill Entities #######################################################################################################################################

execute if entity @s[tag=!holding_weapon] at @s run scoreboard players reset @s reloading

scoreboard players reset @s[tag=!holding_full_auto] full_auto

####################################################################################################################################################################################

execute if entity @s[tag=holding_zoom] at @s run function weapon:zoom/check
execute as @s[tag=shoot_delay_deagle] at @s run function weapon:deagle/shoot_delay
execute as @s[tag=shoot_delay_svd] at @s run function weapon:svd/shoot_delay
execute as @s[tag=shoot_delay_m82] at @s run function weapon:m82/shoot_delay

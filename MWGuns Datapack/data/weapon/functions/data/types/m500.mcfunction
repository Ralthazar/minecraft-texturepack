### - Check Mosin
function weapon:data/data

scoreboard players set @s[scores={reloading=0}] custommodeldata 250
scoreboard players set @s[scores={reloading=0}] modeldamage 1

execute if score @s reloading >= value reload_max run scoreboard players set @s custommodeldata 250
execute if score @s reloading >= value reload_max run scoreboard players set @s modeldamage 0

execute store result storage weapon:temp Item.tag.CustomModelData int 1 run scoreboard players get @s custommodeldata
execute store result storage weapon:temp Item.tag.Damage int 1 run scoreboard players get @s modeldamage

function weapon:data/store

scoreboard players reset @s custommodeldata
scoreboard players reset @s modeldamage
################################################################################################################################################################################################################################################################

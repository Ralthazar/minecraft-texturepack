### - Check Mosin
function weapon:data/data

scoreboard players set @s[tag=zoom_pistol] custommodeldata 205
scoreboard players set @s[tag=!zoom_pistol] custommodeldata 206

execute store result storage weapon:temp Item.tag.CustomModelData int 1 run scoreboard players get @s custommodeldata

function weapon:data/store

scoreboard players reset @s custommodeldata
################################################################################################################################################################################################################################################################

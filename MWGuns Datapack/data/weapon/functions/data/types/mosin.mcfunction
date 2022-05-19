### - Check Mosin
function weapon:data/data

scoreboard players set @s[tag=zoom_mosin] custommodeldata 290
scoreboard players set @s[tag=!zoom_mosin] custommodeldata 291

execute store result storage weapon:temp Item.tag.CustomModelData int 1 run scoreboard players get @s custommodeldata

function weapon:data/store

scoreboard players reset @s custommodeldata
################################################################################################################################################################################################################################################################
